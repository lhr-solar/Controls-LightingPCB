#pragma once

#include "stm32xx_hal.h"
#include "FreeRTOS.h"
#include "semphr.h"

#define MAX_RGB_VAL 255

#define NUMBER_PWM_DATA_ELEMENTS 4

#define WS2814_TIMER_PERIOD_TICKS 100

#define WS2814_HIGH (2*WS2814_TIMER_PERIOD_TICKS)/3
#define WS2814_LOW WS2814_TIMER_PERIOD_TICKS/3

#define WS2814_RESET_TIME 50

typedef enum{
    WS2814_OK, // WS2814 transaction completed successfully
    WS2814_NULL_ERROR, // parameter is NULL
    WS2814_ERROR, // an error occured
    WS2814_BUSY // a shared resource is busy
}ws2814_status_t;

typedef struct{
    uint8_t red;
    uint8_t green;
    uint8_t blue;
    uint8_t white;
} ws2814_color_t;

#define WS2814_SOLID_GREEN         ((ws2814_color_t){ .red = 0,   .green = 255,   .blue = 0,   .white = 0 })
#define WS2814_SOLID_RED           ((ws2814_color_t){ .red = 255, .green = 0,     .blue = 0,   .white = 0 })
#define WS2814_SOLID_BLUE          ((ws2814_color_t){ .red = 0,   .green = 0,     .blue = 255, .white = 0 })
#define WS2814_SOLID_YELLOW        ((ws2814_color_t){ .red = 255, .green = 255,   .blue = 0,   .white = 0 })
#define WS2814_SOLID_WHITE         ((ws2814_color_t){ .red = 0,   .green = 0,     .blue = 0,   .white = 255 })
#define WS2814_SOLID_OFF           ((ws2814_color_t){ .red = 0,   .green = 0,     .blue = 0,   .white = 0 })


// Represents a string of LEDs
typedef struct{
    uint8_t (*ledData)[NUMBER_PWM_DATA_ELEMENTS]; // Represents the colors contained in the strip: [LED][LEDNUM, G, R, B]
    uint16_t *pwmBuffer; // PWM bitstream of duty cycles, this is what is passed to DMA
    TIM_HandleTypeDef *timerHandle; // The timer handle used to generate PWM
    uint32_t channel;  // The channel associated with the pin's timer 
    uint8_t numberLeds; // the number of LEDs in the string
    SemaphoreHandle_t mutex; // protects multiple threads from writting to the handle
    StaticSemaphore_t mutexBuf; // static buffer for the mutex
    volatile uint8_t dmaActive; // indicates when a dma transmission is active
    SemaphoreHandle_t framePendingSem; // indicates that there's a new rgb frame to send
    StaticSemaphore_t framePendingBuf; // static buffer to store the semaphore
}ws2814_handle_t;


/**
 * @brief Initializes a strip of ws2814 LEDs
 * 
 * @param ledHandler    Pointer to the ws2814 handle.
 * @param ledData       2D array storing per-LED color data
 * @param pwmData       Buffer used for encoded PWM waveform data.
 * @param timerHandle   Pointer to the timer handle.
 * @param channel       Timer channel used for PWM output.
 * @param numberLeds    Number of LEDs in a strip
 * @return ws2814_status_t Returns WS2814_OK on success, and returns any other value on failure
 */
ws2814_status_t ws2814_init(ws2814_handle_t *ledHandler, uint8_t ledData[][NUMBER_PWM_DATA_ELEMENTS], uint16_t *pwmData, TIM_HandleTypeDef *timerHandle, uint32_t channel, uint8_t numberLeds);

/**
 * @brief Sets the color for a specific led in the ws2814 strip
 * 
 * @param ledHandler    Pointer to the ws2814 handle.
 * @param led_num       The led number being set (0 indexed).
 * @param color         Struct containing RGB value to set the led too.
 * @param delay_ticks   Ticks to wait for data (0 = non-blocking, portMAX_DELAY = block until available).
 * @return ws2814_status_t Returns WS2814_OK on success, and returns any other value on failure
 */
ws2814_status_t ws2814_set_color(ws2814_handle_t *ledHandler, uint8_t led_num,  ws2814_color_t color, TickType_t delay_ticks);

/**
 * @brief Callback function that gets called in the TIM_PWM_PulseFinishedCallback function
 * 
 * @param ledHandler                Pointer to the ws2814 handle.
 * @param timerHandle               Pointer to the timer handle.
 * @param xHigherPriorityTaskWoken  Pointer to the highest priority task to be called next
 * @return none
 */
void ws2814_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim, ws2814_handle_t *ledHandler,  BaseType_t *xHigherPriorityTaskWoken);

/**
 * @brief Sets the color of all LEDs in a ws2814 strip
 * 
 * @param ledHandler    Pointer to the ws2814 handle.
 * @param color         Struct containing RGB value to set the led too.
 * @param delay_ticks   Ticks to wait for data (0 = non-blocking, portMAX_DELAY = block until available).
 * @return ws2814_status_t Returns WS2814_OK on success, and returns any other value on failure
 */
ws2814_status_t ws2814_set_all_leds(ws2814_handle_t *ledHandler, ws2814_color_t color, TickType_t delay_ticks);

/**
 * @brief Sets the color of a specified range of LEDs in a ws2814 strip
 * 
 * @param ledHandler    Pointer to the ws2814 handle.
 * @param start         Starting index of the led range to set (0 indexed).
 * @param end           Ending index of the led range to set (0 indexed).
 * @param color         Struct containing RGB value to set the led too.
 * @param delay_ticks   Ticks to wait for data (0 = non-blocking, portMAX_DELAY = block until available).
 * @return ws2814_status_t Returns WS2814_OK on success, and returns any other value on failure
 */
ws2814_status_t ws2814_set_led_range(ws2814_handle_t *ledHandler, uint8_t start, uint8_t end, ws2814_color_t color, TickType_t delay_ticks);

/**
 * @brief Loads an array of colors into the led strip
 * 
 * @param ledHandler    Pointer to the ws2814 handle.
 * @param color         An array of color structs that the led strip will be set too.
 * @param start         Starting index of the led range to set (0 indexed).
 * @param numColors     Number of elements in the colors array
 * @param delay_ticks   Ticks to wait for data (0 = non-blocking, portMAX_DELAY = block until available).
 * @return ws2814_status_t Returns WS2814_OK on success, and returns any other value on failure
 */
ws2814_status_t ws2814_load_colors(ws2814_handle_t *ledHandler, const ws2814_color_t colors[], uint8_t start, uint8_t numColors, TickType_t delay_ticks);
