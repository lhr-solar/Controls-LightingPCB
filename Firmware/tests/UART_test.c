#include "FreeRTOS.h"
#include "DBG.h"

#define INIT_TASK_PRIORITY                  (tskIDLE_PRIORITY+1)
#define INIT_TASK_STACK_SIZE                configMINIMAL_STACK_SIZE
StaticTask_t INIT_TASK_TCB;
StackType_t INIT_TASK_Stack_Array[INIT_TASK_STACK_SIZE];

//Open in putty to see "Poop"
void PoopTask(void *argument) {
    while(1) {
        printf("Poop\n\r");
        vTaskDelay(pdMS_TO_TICKS(500));
    }
}

int main(void) {
    HAL_Init();
    SystemClock_Config();

    initPrintf();

    xTaskCreateStatic(
        PoopTask,
        "poop",
        INIT_TASK_STACK_SIZE,
        NULL,
        INIT_TASK_PRIORITY,
        INIT_TASK_Stack_Array,
        &INIT_TASK_TCB
    );
    vTaskStartScheduler();
 
    while (1) {

    }
}