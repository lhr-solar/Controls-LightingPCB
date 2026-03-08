#include "ws2814.h"
#include "stm32xx_hal.h"
#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"

// Setting up the LED strip //

#define NUM_LEDS 30
#define LEFT_START 0
#define LEFT_END (NUM_LEDS/3 -1) // 

#define CENTER_START (NUM_LEDS/3)
#define CENTER_END (2*NUM_LEDS/3 -1)

#define RIGHT_START(2*NUM_LEDS/3)
#define RIGHT_END (NUM_LEDS-1)

volatile uint8_t canByte; // most recent CAN message, made volatile to avoid optimization
volatile uint16_t adcValue; // most recent ADC value

// Buffers //

ws2814_handle_t ledStrip; // struct with all info the ws2814 driver needs to control LED strip
uint8_t ledData[NUM_LEDS][NUMBER_PWM_DATA_ELEMENTS]; // stores the RGBW values for each LED
uint16_t pwmBuffer[(32*NUM_LEDS) + WS2814_RESET_SLOTS]; // the actual timing pulses that are sent to LED strip through DMA
// from CubeMX
extern CAN_HandleTypeDef hcan1;
extern ADC_HandleTypeDef hadc1;
extern TIM_HandleTypeDef htim1;

int main(void){
    HAL_Init(); // init hal library and system tick timer
    SystemClock_Config(); //stm32 clock 

    /* put this in lights_init
    MX_GPIO_Init(); // init gpio pins as configured in CubeMX
    MX_CAN1_Init(); // init CAN peripheral
    MX_ADC1_Init();
    MX_TIM1_Init(); // timer used for ws2814 pwm output
    */
    
    // Start CAN
    HAL_CAN_Start(&hcan1);
    HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING); // enables CAN FIFO interupt allowing CAN msgs to trigger ISR

    xTaskCreate(Init_Task, "Init_Task", 512, NULL, 3, NULL); //create initialization task

    vTaskStartScheduler(); // start scheduler

    while(1){

    } // shouldn't actually reach this point
    
}