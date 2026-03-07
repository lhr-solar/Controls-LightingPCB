#pragma once


// init task
    // first task created
    // hal_init is in main but all of your task_create_inits should be in the init task
// task to read CAN
// task to send CAN should also read ADC from sensing 
    // we can bundle because we don't want to do one without the other
// peripheral is not running at the same time as CPU
// DMA is not being updated synchronously to CPU
// DMA and CPU both have access to bus 
    // must use violotile with DMA to ensure the compiler does not remove the varaible
    // we are populating the DMA and then the ADC is reading it (reading hapens in the first task) and the (writing happsn in the 2nd task)
    // one of the perfipherals (PWM or TIM?) is ready DMA buffer as its populated, which is the light data
        // TIM is time based (controls blinking)
        // PWM is on the clock (much faster) controls brightness

        // two buffers
            //  one for ADC  (just reading peripheral and if there needs to be processing, do it in this task)
            // one for lights   
                // to update buffer we setRange to one color setting chunks of the buffer

#include "stm32xx_hal.h"
#include "FreeRTOS.h"
#include "semphr.h"

#define MAX_RGB_VAL 255

// WS2814 is RGBW, so 4 elements per LED
#define NUMBER_PWM_DATA_ELEMENTS 4

// timer period for PWM
#define WS2814_TIMER_PERIOD_TICKS 59

// PWM pulse widths for high and low signal
#define WS2814_HIGH (2*WS2814_TIMER_PERIOD_TICKS)/3
#define WS2814_LOW WS2814_TIMER_PERIOD_TICKS/3

// reset slots for the strip
#define WS2814_RESET_SLOTS 50

typedef enum{
    WS2814_OK,
    WS2814_NULL_ERROR,
    WS2814_ERROR,
    WS2814_BUSY
} ws2814_status_t;

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

// string of WS2814 LEDs
typedef struct{
    uint8_t (*ledData)[NUMBER_PWM_DATA_ELEMENTS];        // [LED][LEDNUM, G, R, B, W]
    uint16_t *pwmBuffer;          // PWM bitstream
    TIM_HandleTypeDef *timerHandle;
    uint32_t channel; 
    uint8_t numberLeds; // number of LEDs in the string
    SemaphoreHandle_t mutex; // protects multiple threads from writing simultaneously
    StaticSemaphore_t mutexBuf;
    volatile uint8_t dmaActive; // indicates when a DMA transmission is active
    SemaphoreHandle_t framePendingSem; // indicates that a new RGBW frame is pending
    StaticSemaphore_t framePendingBuf;
} ws2814_handle_t;

/**
 * @brief Initializes a WS2814 LED strip
 */
ws2814_status_t ws2814_init(ws2814_handle_t *ledHandler, uint8_t ledData[][NUMBER_PWM_DATA_ELEMENTS], uint16_t *pwmData, TIM_HandleTypeDef *timerHandle, uint32_t channel, uint8_t numberLeds);

/**
 * @brief Sets the color of a single WS2814 LED
 */
ws2814_status_t ws2814_set_color(ws2814_handle_t *ledHandler, uint8_t led_num, ws2814_color_t color, TickType_t delay_ticks);

/**
 * @brief Sets all LEDs in the strip to the same color
 */
ws2814_status_t ws2814_set_all(ws2814_handle_t *ledHandler, ws2814_color_t color, TickType_t delay_ticks);

/**
 * @brief Callback function called when TIM PWM DMA finishes a frame
 */
void ws2814_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim, ws2814_handle_t *ledHandler, BaseType_t *xHigherPriorityTaskWoken);

/**
 * @brief Sets a range of LEDs in the strip to a color
 */
ws2814_status_t ws2814_set_led_range(ws2814_handle_t *ledHandler, uint8_t start, uint8_t end, ws2814_color_t color, TickType_t delay_ticks);
// start 1 start 2 end 1 end 2 to partition
/**
 * @brief Loads an array of colors into the LED strip
 */
ws2814_status_t ws2814_load_colors(ws2814_handle_t *ledHandler, const ws2814_color_t colors[], uint8_t start, uint8_t numColors, TickType_t delay_ticks);
