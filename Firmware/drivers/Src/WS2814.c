#include "WS2814.h"

// ordering of data in my PWM array
typedef enum {
    WS2814_LEDNUMBER = 0, // index to LED number
    WS2814_GREEN = 1,     
    WS2814_RED = 2,
    WS2814_BLUE = 3,
    WS2814_WHITE = 4
} pwm_data_ordering_t;


ws2814_status_t ws2814_init(ws2814_handle_t *ledHandler, uint8_t ledData[][NUMBER_PWM_DATA_ELEMENTS], uint16_t *pwmData, TIM_HandleTypeDef *timerHandle, uint32_t channel, uint8_t numberLeds){
    
    if (ledHandler==NULL || pwmData==NULL || timerHandle==NULL || ledData==NULL) return WS2814_NULL_ERROR;

    ledHandler->pwmBuffer = pwmData;
    ledHandler->timerHandle = timerHandle;
    ledHandler->channel = channel;
    ledHandler->ledData = ledData;
    ledHandler->dmaActive = 0;
    ledHandler->mutex = xSemaphoreCreateMutexStatic(&ledHandler->mutexBuf);
    ledHandler->framePendingSem = xSemaphoreCreateBinaryStatic(&ledHandler->framePendingBuf);
    ledHandler->numberLeds = numberLeds;

    //memset(ledHandler->ledData, 0, numberLeds * NUMBER_PWM_DATA_ELEMENTS); // vhat said, but didnt change antytnig

    return WS2814_OK;
}

/**
 * @brief Encodes the ledData field into a pwmBuffer to pass to DMA
 * 
 * @param ledHandler    Pointer to the ws2814 handle.
 * @return idx          Number of elements to encode
 */
static uint32_t ws2814_encode_pwm(ws2814_handle_t *ledHandler){
    uint32_t idx = 0; // index for PWM buffer
    uint32_t color;   // 32 bit color

    for (uint8_t i = 0; i < ledHandler->numberLeds; i++) { // loop through every LED
        color = // color components into 32-bit integer
            (ledHandler->ledData[i][WS2814_GREEN] << 24) |
            (ledHandler->ledData[i][WS2814_RED]   << 16) |
            (ledHandler->ledData[i][WS2814_BLUE]  << 8)  |
            (ledHandler->ledData[i][WS2814_WHITE]);

        for (int8_t bit = 31; bit >= 0; bit--) { // map each bit to a PWM duty cycle
            ledHandler->pwmBuffer[idx++] = (color & (1UL << bit)) ? WS2814_HIGH : WS2814_LOW;
        }
    }

    for (uint8_t i = 0; i < WS2814_RESET_TIME; i++){ // hold color until next frame
        ledHandler->pwmBuffer[idx++] = 0;
    }
    return idx; 
}

/**
 * @brief Starts the DMA transmission for the led strip
 * 
 * @param ledHandler    Pointer to the ws2814 handle.
 * @param idx           Number of elements to encode
 * @return ws2814_status_t Returns WS2814_OK on success, and returns any other value on failure
 */
static ws2814_status_t ws2814_send_color(ws2814_handle_t *ledHandler, uint32_t idx){

    if(ledHandler == NULL) return WS2814_NULL_ERROR;

    // indiciate that there's a new frame to send for the LEDs
    if(xSemaphoreGive(ledHandler->framePendingSem) != pdTRUE) return WS2814_ERROR;

    HAL_StatusTypeDef err = HAL_OK;
    taskENTER_CRITICAL();
    if (ledHandler->dmaActive == 0)
    {
        // addressable led dma is not active and we need to start the DMA transmission
        ledHandler->dmaActive = 1;
        err = HAL_TIM_PWM_Start_DMA(ledHandler->timerHandle, ledHandler->channel, (uint32_t *)ledHandler->pwmBuffer, idx);
        if(err == HAL_ERROR){
            ledHandler->dmaActive = 0;
        }
    }
    taskEXIT_CRITICAL();

    if(err != HAL_OK) return WS2814_ERROR;

    return WS2814_OK;
}

ws2814_status_t ws2814_set_color(ws2814_handle_t *ledHandler, uint8_t led_num, ws2814_color_t color, TickType_t delay_ticks){

    if (ledHandler == NULL) return WS2814_NULL_ERROR;
    if (led_num >= ledHandler->numberLeds) return WS2814_ERROR;
    if(xSemaphoreTake(ledHandler->mutex, delay_ticks) != pdTRUE) return WS2814_BUSY; // take the mutex so other threads can't modify the thread

    ledHandler->ledData[led_num][WS2814_LEDNUMBER] = led_num;
    ledHandler->ledData[led_num][WS2814_GREEN] = color.green;
    ledHandler->ledData[led_num][WS2814_RED] = color.red;
    ledHandler->ledData[led_num][WS2814_BLUE] = color.blue;
    ledHandler->ledData[led_num][WS2814_WHITE] = color.white;

    uint32_t idx = 0;
    idx = ws2814_encode_pwm(ledHandler);

    if(xSemaphoreGive(ledHandler->mutex) != pdTRUE) return WS2814_ERROR;

    ws2814_status_t errStatus = ws2814_send_color(ledHandler, idx);

    return errStatus;

}

ws2814_status_t ws2814_set_all_leds(ws2814_handle_t *ledHandler, ws2814_color_t color, TickType_t delay_ticks){
    if (ledHandler == NULL) return WS2814_NULL_ERROR;

    if(xSemaphoreTake(ledHandler->mutex, delay_ticks) != pdTRUE) return WS2814_BUSY; // take the mutex so other threads can't modify the thread

    for(uint8_t i = 0; i < ledHandler->numberLeds; i++){
        ledHandler->ledData[i][WS2814_LEDNUMBER] = i;
        ledHandler->ledData[i][WS2814_GREEN] = color.green;
        ledHandler->ledData[i][WS2814_RED] = color.red;
        ledHandler->ledData[i][WS2814_BLUE] = color.blue;
        ledHandler->ledData[i][WS2814_WHITE] = color.white;
    }

    uint32_t idx = 0;
    idx = ws2814_encode_pwm(ledHandler);

    if(xSemaphoreGive(ledHandler->mutex) != pdTRUE) return WS2814_ERROR;

    ws2814_status_t errStatus = ws2814_send_color(ledHandler, idx);

    return errStatus;
}

ws2814_status_t ws2814_set_led_range(ws2814_handle_t *ledHandler, uint8_t start, uint8_t end, ws2814_color_t color, TickType_t delay_ticks){
    
    if (ledHandler == NULL) return WS2814_NULL_ERROR;
    if (start >= ledHandler->numberLeds || end >= ledHandler->numberLeds) return WS2814_ERROR;

    // take the mutex so other threads can't modify the thread
    if(xSemaphoreTake(ledHandler->mutex, delay_ticks) != pdTRUE) return WS2814_BUSY;

    for (uint8_t i = start; i <= end; i++) {
        ledHandler->ledData[i][WS2814_LEDNUMBER] = i;
        ledHandler->ledData[i][WS2814_GREEN] = color.green;
        ledHandler->ledData[i][WS2814_RED] = color.red;
        ledHandler->ledData[i][WS2814_BLUE] = color.blue;
        ledHandler->ledData[i][WS2814_WHITE] = color.white;
    }

    uint32_t idx = 0;
    idx = ws2814_encode_pwm(ledHandler);

    if(xSemaphoreGive(ledHandler->mutex) != pdTRUE) return WS2814_ERROR;

    ws2814_status_t errStatus = ws2814_send_color(ledHandler, idx);

    return errStatus;
}

ws2814_status_t ws2814_load_colors(ws2814_handle_t *ledHandler, const ws2814_color_t colors[], uint8_t start, uint8_t numColors, TickType_t delay_ticks){
    
    if (ledHandler == NULL || colors == NULL) return WS2814_NULL_ERROR;
    if (start >= ledHandler->numberLeds || (start+numColors) > ledHandler->numberLeds) return WS2814_ERROR;

    // take the mutex so other threads can't modify the thread
    if(xSemaphoreTake(ledHandler->mutex, delay_ticks) != pdTRUE) return WS2814_BUSY;

    for (uint8_t i = start; i < (start + numColors); i++) {
        ledHandler->ledData[i][WS2814_LEDNUMBER] = i;
        ledHandler->ledData[i][WS2814_GREEN] = colors[i].green;
        ledHandler->ledData[i][WS2814_RED] = colors[i].red;
        ledHandler->ledData[i][WS2814_BLUE] = colors[i].blue;
        ledHandler->ledData[i][WS2814_WHITE] = colors[i].white;
    }

    uint32_t idx = 0;
    idx = ws2814_encode_pwm(ledHandler);

    xSemaphoreGive(ledHandler->mutex);

    ws2814_status_t errStatus = ws2814_send_color(ledHandler, idx);

    return errStatus;
}

void ws2814_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim, ws2814_handle_t *ledHandler,  BaseType_t *xHigherPriorityTaskWoken){
    if(ledHandler == NULL) return;

    if (xSemaphoreTakeFromISR(ledHandler->framePendingSem, xHigherPriorityTaskWoken) == pdTRUE){
        // start the DMA transmission again
        HAL_TIM_PWM_Start_DMA( ledHandler->timerHandle, ledHandler->channel, (uint32_t *)ledHandler->pwmBuffer, (32 * ledHandler->numberLeds) + WS2814_RESET_TIME);
    }
    else{
        // no need to keep running the dma timer if no updated frames
        HAL_TIM_PWM_Stop_DMA(ledHandler->timerHandle, ledHandler->channel);
        ledHandler->dmaActive = 0;
    }
}
