#include "FreeRTOS.h"
#include "task.h"
#include "ws2814.h"
#include "DBG.h"

#define NUM_LEDS 5

#define PRI          (tskIDLE_PRIORITY + 1)
#define STACK_SIZE   configMINIMAL_STACK_SIZE

StaticTask_t LED_TASK_TCB;
StackType_t LED_STACK[STACK_SIZE];

ws2814_handle_t ledStrip;

void LedTask(void *argument)
{
    printf("LED Task Started\n\r");

    /* Buffers required by driver */
    static uint8_t ledData[NUM_LEDS][NUMBER_PWM_DATA_ELEMENTS];
    static uint16_t pwmBuffer[(32 * NUM_LEDS) + WS2814_RESET_SLOTS];

    extern TIM_HandleTypeDef htim16;

    printf("Initializing WS2814...\n\r");

    ws2814_status_t status = ws2814_init(
        &ledStrip,
        ledData,
        pwmBuffer,
        &htim16,
        TIM_CHANNEL_1,
        NUM_LEDS
    );

    if (status != WS2814_OK)
    {
        printf("WS2814 init FAILED\n\r");
        while (1);
    }

    printf("WS2814 init OK\n\r");

    while (1)
    {
        printf("LEDs -> RED\n\r");
        ws2814_set_all(&ledStrip, WS2814_SOLID_RED, portMAX_DELAY);

        vTaskDelay(pdMS_TO_TICKS(500));

        printf("LEDs -> OFF\n\r");
        ws2814_set_all(&ledStrip, WS2814_SOLID_OFF, portMAX_DELAY);

        vTaskDelay(pdMS_TO_TICKS(500));
    }
}

int main(void)
{
    HAL_Init();
    SystemClock_Config();
    initPrintf();

    xTaskCreateStatic(
        LedTask,
        "LED Task",
        STACK_SIZE,
        NULL,
        PRI,
        LED_STACK,
        &LED_TASK_TCB
    );

    vTaskStartScheduler();

    while (1)
    {
    }
}