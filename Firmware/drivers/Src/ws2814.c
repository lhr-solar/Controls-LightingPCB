#include "ws2814.h"
#include "DBG.h"

static void MX_DMA_Init(void);
static void MX_TIM16_Init(void);

extern ws2814_handle_t ledStrip;
DMA_HandleTypeDef hdma_tim16_ch1;

typedef enum {
    WS2814_LEDNUMBER = 0, // index to LED number
    WS2814_GREEN = 1,     
    WS2814_RED = 2,
    WS2814_BLUE = 3,
    WS2814_WHITE = 4
} pwm_data_ordering_t;

/*
 * @brief Initialize the WS2814 LED driver
 * Set up DMA buffer, timer, LED data array, mutexes, semaphores, and # of LEDs.
 * @param ledHandler Pointer to the driver handle
 * @param ledData Array containing LED colors
 * @param pwmData Array to hold PWM signal for DMA
 * @param timerHandle Pointer to the timer used for PWM
 * @param channel Timer channel used for PWM output
 * @param numberLeds Number of LEDs in the strip
 * @return ws2814_status_t Status code (OK, ERROR, or NULL_ERROR)
 */
ws2814_status_t ws2814_init(ws2814_handle_t *ledHandler, uint8_t ledData[][NUMBER_PWM_DATA_ELEMENTS], uint16_t *pwmData, TIM_HandleTypeDef *timerHandle, uint32_t channel, uint8_t numberLeds){
    
    if (ledHandler==NULL || pwmData==NULL || timerHandle==NULL || ledData==NULL) return WS2814_NULL_ERROR;

    MX_DMA_Init();
    MX_TIM16_Init();

    ledHandler->pwmBuffer = pwmData; // assign DMA buffer which holds PWM waveform
    ledHandler->timerHandle = timerHandle; // WS2814 timing to generate accurate waveform
    ledHandler->channel = channel;
    ledHandler->ledData = ledData; // LED data array storing current color of each LED
    ledHandler->dmaActive = 0; // deactivate DMA to track if DMA is currently sending data

    ledHandler->mutex = xSemaphoreCreateMutexStatic(&ledHandler->mutexBuf); // mutex to support thread safe access to LED data 
    // prevents multiple tasks from modifying data
    ledHandler->framePendingSem = xSemaphoreCreateBinaryStatic(&ledHandler->framePendingBuf); // semaphore signals when new frame is pending

    ledHandler->numberLeds = numberLeds; // stores total # of LEDs needed for loops and processing PWM
    return WS2814_OK;
}

/**
 * @brief Encode LED RGBW values into PWM buffer
 * Why: WS2814 LEDs require precise PWM timings; encoding transforms color data into 
 * high/low signal representation compatible with WS2814 protocol.
 *
 * @param ledHandler Pointer to the driver handle
 * @return uint32_t Total number of PWM slots written (needed for DMA length)
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

    for (uint8_t i = 0; i < WS2814_RESET_SLOTS; i++){ // hold color until next frame
        ledHandler->pwmBuffer[idx++] = 0;
    }
    return idx; 
}

/*
 * @brief Start DMA transmission to send PWM buffer to LEDs
 * @param ledHandler Pointer to driver handle
 * @param idx Number of PWM slots to transmit
 * @return ws2814_status_t Status of DMA start
 */
static ws2814_status_t ws2814_send_color(ws2814_handle_t *ledHandler, uint32_t idx){
    if (!ledHandler) return WS2814_NULL_ERROR;

    if (xSemaphoreGive(ledHandler->framePendingSem) != pdTRUE) return WS2814_ERROR; // tells ISR that LED data changes and must be resent 

    HAL_StatusTypeDef err = HAL_OK;
    taskENTER_CRITICAL(); // only one task at a time can start the DMA
    if (!ledHandler->dmaActive) {
        ledHandler->dmaActive = 1;
        err = HAL_TIM_PWM_Start_DMA(ledHandler->timerHandle, ledHandler->channel, (uint32_t*)ledHandler->pwmBuffer, idx);
        if(err == HAL_ERROR) ledHandler->dmaActive = 0;
    }
    taskEXIT_CRITICAL();

    printf("Starting DMA frame\n\r");

    return (err == HAL_OK) ? WS2814_OK : WS2814_ERROR;
}

/*
 * @brief Set color of a single LED
 * Why: Provides fine-grained control over individual LEDs while ensuring thread safety.
 *
 * @param ledHandler Driver handle
 * @param led_num LED index to update
 * @param color Desired RGBW color
 * @param delay_ticks Maximum wait time for mutex
 * @return ws2814_status_t Status code
 */
ws2814_status_t ws2814_set_color(ws2814_handle_t *ledHandler, uint8_t led_num, ws2814_color_t color, TickType_t delay_ticks){
    if (!ledHandler) return WS2814_NULL_ERROR; 
    if (led_num >= ledHandler->numberLeds) return WS2814_ERROR;
    if (xSemaphoreTake(ledHandler->mutex, delay_ticks) != pdTRUE) return WS2814_BUSY; // prevents simultaneous writes

    ledHandler->ledData[led_num][WS2814_LEDNUMBER] = led_num;
    ledHandler->ledData[led_num][WS2814_GREEN] = color.green;
    ledHandler->ledData[led_num][WS2814_RED] = color.red;
    ledHandler->ledData[led_num][WS2814_BLUE] = color.blue;
    ledHandler->ledData[led_num][WS2814_WHITE] = color.white;

    uint32_t idx = ws2814_encode_pwm(ledHandler); // converts ledData array to PWM
    xSemaphoreGive(ledHandler->mutex);

    return ws2814_send_color(ledHandler, idx); // sends pulses to LEDs
}

/* Set all LEDs */
ws2814_status_t ws2814_set_all(ws2814_handle_t *ledHandler, ws2814_color_t color, TickType_t delay_ticks){
    if (!ledHandler) return WS2814_NULL_ERROR;
    if (xSemaphoreTake(ledHandler->mutex, delay_ticks) != pdTRUE) return WS2814_BUSY;

    for(uint8_t i = 0; i < ledHandler->numberLeds; i++){
        ledHandler->ledData[i][WS2814_LEDNUMBER] = i;
        ledHandler->ledData[i][WS2814_GREEN] = color.green;
        ledHandler->ledData[i][WS2814_RED] = color.red;
        ledHandler->ledData[i][WS2814_BLUE] = color.blue;
        ledHandler->ledData[i][WS2814_WHITE] = color.white;
    }

    uint32_t idx = ws2814_encode_pwm(ledHandler);
    xSemaphoreGive(ledHandler->mutex);

    return ws2814_send_color(ledHandler, idx);
}

/**
 * @brief Sets a range of LEDs to a color
 * Useful for segment-based effects or animations.
 */
ws2814_status_t ws2814_set_led_range(ws2814_handle_t *ledHandler, uint8_t start, uint8_t end, ws2814_color_t color, TickType_t delay_ticks) {
    if (ledHandler == NULL) return WS2814_NULL_ERROR;
    if (start >= ledHandler->numberLeds || end >= ledHandler->numberLeds) return WS2814_ERROR;

    if (xSemaphoreTake(ledHandler->mutex, delay_ticks) != pdTRUE) return WS2814_BUSY;

    for (uint8_t i = start; i <= end; i++) {
        ledHandler->ledData[i][WS2814_LEDNUMBER] = i;
        ledHandler->ledData[i][WS2814_GREEN] = color.green;
        ledHandler->ledData[i][WS2814_RED] = color.red;
        ledHandler->ledData[i][WS2814_BLUE] = color.blue;
        ledHandler->ledData[i][WS2814_WHITE] = color.white;
    }

    uint32_t idx = ws2814_encode_pwm(ledHandler);
    xSemaphoreGive(ledHandler->mutex);

    return ws2814_send_color(ledHandler, idx);
}

/**
 * @brief Loads an array of colors into the LED strip
 * Efficiently sets multiple LEDs for complex patterns or animations.
 */
ws2814_status_t ws2814_load_colors(ws2814_handle_t *ledHandler, const ws2814_color_t colors[], uint8_t start, uint8_t numColors, TickType_t delay_ticks) {
    if (!ledHandler || !colors) return WS2814_NULL_ERROR;
    if (start >= ledHandler->numberLeds || (start + numColors) > ledHandler->numberLeds) return WS2814_ERROR;

    if (xSemaphoreTake(ledHandler->mutex, delay_ticks) != pdTRUE) return WS2814_BUSY;

    for (uint8_t i = start; i < (start + numColors); i++) {
        ledHandler->ledData[i][WS2814_LEDNUMBER] = i;
        ledHandler->ledData[i][WS2814_GREEN] = colors[i].green;
        ledHandler->ledData[i][WS2814_RED] = colors[i].red;
        ledHandler->ledData[i][WS2814_BLUE] = colors[i].blue;
        ledHandler->ledData[i][WS2814_WHITE] = colors[i].white;
    }

    uint32_t idx = ws2814_encode_pwm(ledHandler);
    xSemaphoreGive(ledHandler->mutex);

    return ws2814_send_color(ledHandler, idx);
}

/* 
 * @brief PWM DMA complete callback (called from ISR)
 * Ensures continuous LED updates without blocking CPU; re-starts DMA if a new frame is pending
 *
 * @param htim Timer handle
 * @param ledHandler Driver handle
 * @param xHigherPriorityTaskWoken ISR flag for FreeRTOS
*/
void ws2814_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim, ws2814_handle_t *ledHandler, BaseType_t *xHigherPriorityTaskWoken){
    if (!ledHandler) return;

    // is new frame pending
    if (xSemaphoreTakeFromISR(ledHandler->framePendingSem, xHigherPriorityTaskWoken) == pdTRUE){ // start DMA to send new LED frame
        HAL_TIM_PWM_Start_DMA(htim, ledHandler->channel, (uint32_t*)ledHandler->pwmBuffer, (32 * ledHandler->numberLeds) + WS2814_RESET_SLOTS);
    } else {
        // if no new frame, stop DMA
        HAL_TIM_PWM_Stop_DMA(htim, ledHandler->channel);
        ledHandler->dmaActive = 0; // deactivate DMA
    }
}

void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;

    ws2814_TIM_PWM_PulseFinishedCallback(htim, &ledStrip, &xHigherPriorityTaskWoken);

    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

void HAL_TIM_PWM_PulseFinishedHalfCpltCallback(TIM_HandleTypeDef *htim)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;

    ws2814_TIM_PWM_PulseFinishedCallback(htim, &ledStrip, &xHigherPriorityTaskWoken);

    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

TIM_HandleTypeDef htim16;

static void MX_TIM16_Init(void)
{
    TIM_OC_InitTypeDef sConfigOC = {0};

    htim16.Instance = TIM16;
    htim16.Init.Prescaler = 0;
    htim16.Init.CounterMode = TIM_COUNTERMODE_UP;
    htim16.Init.Period = WS2814_TIMER_PERIOD_TICKS;
    htim16.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
    htim16.Init.RepetitionCounter = 0;

    HAL_TIM_Base_Init(&htim16);
    HAL_TIM_PWM_Init(&htim16);

    sConfigOC.OCMode = TIM_OCMODE_PWM1;
    sConfigOC.Pulse = 0;
    sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;

    HAL_TIM_PWM_ConfigChannel(&htim16, &sConfigOC, TIM_CHANNEL_1);

    /* enable DMA requests from timer compare */
    __HAL_TIM_ENABLE_DMA(&htim16, TIM_DMA_CC1);

    /* -------- GPIO CONFIG FOR TIM16_CH1 -------- */
    __HAL_RCC_GPIOA_CLK_ENABLE();   // depends on which port you use

    GPIO_InitTypeDef GPIO_InitStruct = {0};
    GPIO_InitStruct.Pin = GPIO_PIN_6;      // example pin
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF14_TIM16;

    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
}

void DMA1_Channel1_IRQHandler(void)
{
    HAL_DMA_IRQHandler(&hdma_tim16_ch1);
}

static void MX_DMA_Init(void)
{
    __HAL_RCC_DMA1_CLK_ENABLE();

    hdma_tim16_ch1.Instance = DMA1_Channel1;
    hdma_tim16_ch1.Init.Direction = DMA_MEMORY_TO_PERIPH;
    hdma_tim16_ch1.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_tim16_ch1.Init.MemInc = DMA_MINC_ENABLE;
    hdma_tim16_ch1.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
    hdma_tim16_ch1.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
    hdma_tim16_ch1.Init.Mode = DMA_NORMAL;
    hdma_tim16_ch1.Init.Priority = DMA_PRIORITY_HIGH;

    HAL_DMA_Init(&hdma_tim16_ch1);

    /* link DMA to timer */
    __HAL_LINKDMA(&htim16, hdma[TIM_DMA_ID_CC1], hdma_tim16_ch1);

    HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
}