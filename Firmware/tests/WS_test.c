#include "stm32l4xx.h"
#include "stm32l4xx_hal.h"
#include "stm32l4xx_hal_dma.h"
#include "stm32l4xx_hal_conf.h"
#include "WS2814.h"
#include "FreeRTOS.h"
#include "task.h"
#include "DBG.h"

#define MAX_LED 5

#define LED_PIN GPIO_PIN_11
#define LED_PORT GPIOB

#define PROFILE_PORT GPIOA
#define PROFILE_PIN GPIO_PIN_10

TIM_HandleTypeDef htim16;
DMA_HandleTypeDef hdma_tim16_ch1;

static uint8_t ledData[MAX_LED][NUMBER_PWM_DATA_ELEMENTS];
static uint16_t pwmData[(32 * MAX_LED) + WS2814_RESET_TIME];
static ws2814_handle_t wsHandle;


static void MX_DMA_Init(void);
static void MX_TIM16_Init(void);
void HAL_TIM_MspPostInit(TIM_HandleTypeDef* timHandle);

StaticTask_t TaskBuffer;
StackType_t TaskStack[configMINIMAL_STACK_SIZE];


void Profiler_Init(){
    GPIO_InitTypeDef led_config = {
        .Mode = GPIO_MODE_OUTPUT_PP,
        .Pull = GPIO_NOPULL,
        .Pin = PROFILE_PIN
    };

    switch ((uint32_t)PROFILE_PORT) {
        case (uint32_t)GPIOA:
            __HAL_RCC_GPIOA_CLK_ENABLE();
            break;
        case (uint32_t)GPIOB:
            __HAL_RCC_GPIOB_CLK_ENABLE();
            break;
        case (uint32_t)GPIOC:
            __HAL_RCC_GPIOC_CLK_ENABLE();
            break;
    }
    
    HAL_GPIO_Init(PROFILE_PORT, &led_config);
}

// Initialize clock for heartbeat LED port
void Heartbeat_Init() {
    GPIO_InitTypeDef led_config = {
        .Mode = GPIO_MODE_OUTPUT_PP,
        .Pull = GPIO_NOPULL,
        .Pin = LED_PIN
    };

    switch ((uint32_t)LED_PORT) {
        case (uint32_t)GPIOA:
            __HAL_RCC_GPIOA_CLK_ENABLE();
            break;
        case (uint32_t)GPIOB:
            __HAL_RCC_GPIOB_CLK_ENABLE();
            break;
        case (uint32_t)GPIOC:
            __HAL_RCC_GPIOC_CLK_ENABLE();
            break;
    }
    
    HAL_GPIO_Init(LED_PORT, &led_config);
}

#define LED_SEQUENCE_SPEED 250
void led_sequence(){
    ws2814_set_all_leds(&wsHandle, WS2814_SOLID_OFF, portMAX_DELAY);

    ws2814_color_t colors[] = {
        WS2814_SOLID_RED,
        WS2814_SOLID_BLUE,
        WS2814_SOLID_GREEN,
        WS2814_SOLID_YELLOW,
    };

    // dim brightness
    for(int i=0; i<sizeof(colors)/sizeof(ws2814_color_t); i++){
        colors[i].blue = colors[i].blue / 6;
        colors[i].red = colors[i].red / 6;
        colors[i].green = colors[i].green / 6;
    }

    for(int i=0; i<MAX_LED; i++){
        ws2814_set_color(&wsHandle, i, colors[i % (sizeof(colors)/sizeof(ws2814_color_t))], portMAX_DELAY);
        vTaskDelay(pdMS_TO_TICKS(LED_SEQUENCE_SPEED));
        ws2814_set_color(&wsHandle, i, WS2814_SOLID_OFF, portMAX_DELAY);
    }

    for(int j=0; j<2; j++){
        for(int i=0; i<MAX_LED; i++){
            ws2814_set_color(&wsHandle, i, colors[i % (sizeof(colors)/sizeof(ws2814_color_t))], portMAX_DELAY);
        }

        vTaskDelay(pdMS_TO_TICKS(LED_SEQUENCE_SPEED/2));
        ws2814_set_all_leds(&wsHandle, WS2814_SOLID_OFF, portMAX_DELAY);
        vTaskDelay(pdMS_TO_TICKS(LED_SEQUENCE_SPEED/2));
    }
}

void task(){
    
    ws2814_init(
      &wsHandle,
      ledData,
      pwmData,
      &htim16,
      TIM_CHANNEL_1,
      MAX_LED
    );

    ws2814_set_all_leds(&wsHandle, WS2814_SOLID_OFF, portMAX_DELAY);

    while(1){
        led_sequence();
        vTaskDelay(pdMS_TO_TICKS(500));
        //HAL_GPIO_TogglePin(PROFILE_PORT, PROFILE_PIN);
        HAL_GPIO_TogglePin(LED_PORT, LED_PIN);
        //vTaskDelay(pdMS_TO_TICKS(500));
    }
}

int main(){

    HAL_Init();
    SystemClock_Config();

    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOB_CLK_ENABLE();

    MX_DMA_Init();
    MX_TIM16_Init();
    Heartbeat_Init();
    //initPrintf();

    //Profiler_Init();

    // Create the tasks statically
    xTaskCreateStatic(task, 
                     "TX",
                     configMINIMAL_STACK_SIZE,
                     NULL,
                     tskIDLE_PRIORITY + 2,
                     TaskStack,
                     &TaskBuffer);

    // Start the scheduler
    
    vTaskStartScheduler();
    

    while(1){
      // should never get here, but this is PWM test, works
      HAL_GPIO_TogglePin(LED_PORT, LED_PIN);
      __HAL_TIM_SET_COMPARE(&htim16, TIM_CHANNEL_1, 10);
      HAL_Delay(1000);

      HAL_GPIO_TogglePin(LED_PORT, LED_PIN);
      __HAL_TIM_SET_COMPARE(&htim16, TIM_CHANNEL_1, 20);
      HAL_Delay(1000);

      HAL_GPIO_TogglePin(LED_PORT, LED_PIN);
      __HAL_TIM_SET_COMPARE(&htim16, TIM_CHANNEL_1, 75);
      HAL_Delay(1000);
    }

    return 0;
}

void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    if (htim->Instance == htim16.Instance)
    {
        ws2814_TIM_PWM_PulseFinishedCallback(htim, &wsHandle, &xHigherPriorityTaskWoken);
    }
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

// You will need this for the DMA interrupt to process properly
void DMA1_Channel1_IRQHandler(){
    HAL_DMA_IRQHandler(&hdma_tim16_ch1);
}


// I had to go on a wild goose chase to find this, and idek if this is rihgtkhgj
#if defined (STM32L4P5xx) || defined (STM32L4Q5xx)
#define LL_DMAMUX_REQ_ADC2             6U                                /*!< DMAMUX ADC2 request        */
#define LL_DMAMUX_REQ_ADC2_SHIFT       1U
#else
#define LL_DMAMUX_REQ_ADC2_SHIFT       0U
#endif

#define DMA_REQUEST_TIM16_CH1        LL_DMAMUX_REQ_TIM16_CH1   /*!< DMAMUX1 TIM16 CH1 request */
#define LL_DMAMUX_REQ_TIM16_CH1       (82U + LL_DMAMUX_REQ_ADC2_SHIFT)   /*!< DMAMUX TIM16 CH1 request   */

void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef* tim_pwmHandle)
{

  if(tim_pwmHandle->Instance==htim16.Instance)
  {
    /* tim16 clock enable */
    __HAL_RCC_TIM16_CLK_ENABLE();

    /* tim16 DMA Init */
    /* tim16_CH1 Init */
    hdma_tim16_ch1.Instance = DMA1_Channel1;
    hdma_tim16_ch1.Init.Request = DMA_REQUEST_TIM16_CH1; // DMA_REQUEST_TIM16_CH1, Honestly dont know what this should be
    hdma_tim16_ch1.Init.Direction = DMA_MEMORY_TO_PERIPH;
    hdma_tim16_ch1.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_tim16_ch1.Init.MemInc = DMA_MINC_ENABLE;
    hdma_tim16_ch1.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
    hdma_tim16_ch1.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
    hdma_tim16_ch1.Init.Mode = DMA_NORMAL;
    hdma_tim16_ch1.Init.Priority = DMA_PRIORITY_LOW;
    if (HAL_DMA_Init(&hdma_tim16_ch1) != HAL_OK)
    {
      Error_Handler();
    }

    __HAL_LINKDMA(tim_pwmHandle,hdma[TIM_DMA_ID_CC1],hdma_tim16_ch1);
  }
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 20;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}


/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{
  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
  /* DMA1_Channel3_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel3_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel3_IRQn);

}

/**
  * @brief TIM16 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM16_Init(void)
{

  /* USER CODE BEGIN TIM16_Init 0 */

  /* USER CODE END TIM16_Init 0 */

  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM16_Init 1 */

  /* USER CODE END TIM16_Init 1 */
  htim16.Instance = TIM16;
  htim16.Init.Prescaler = 0;
  htim16.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim16.Init.Period = WS2814_TIMER_PERIOD_TICKS;
  htim16.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim16.Init.RepetitionCounter = 0;
  htim16.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  // if (HAL_TIM_Base_Init(&htim16) != HAL_OK)
  // {
  //   Error_Handler();
  // }
  if (HAL_TIM_PWM_Init(&htim16) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_PWM_ConfigChannel(&htim16, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim16, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM16_Init 2 */

  /* USER CODE END TIM16_Init 2 */
  HAL_TIM_MspPostInit(&htim16);

}

void HAL_TIM_MspPostInit(TIM_HandleTypeDef* htim)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  if(htim->Instance==TIM16)
  {
    /* USER CODE BEGIN TIM16_MspPostInit 0 */

    /* USER CODE END TIM16_MspPostInit 0 */

    __HAL_RCC_GPIOA_CLK_ENABLE();
    /**TIM16 GPIO Configuration
    PA6     ------> TIM16_CH1
    */
    GPIO_InitStruct.Pin = GPIO_PIN_6;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Alternate = GPIO_AF14_TIM16;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    /* USER CODE BEGIN TIM16_MspPostInit 1 */

    /* USER CODE END TIM16_MspPostInit 1 */
  }

}

void HAL_TIM_PWM_MspDeInit(TIM_HandleTypeDef* tim_pwmHandle)
{

  if(tim_pwmHandle->Instance==TIM16)
  {
    /* Peripheral clock disable */
    __HAL_RCC_TIM16_CLK_DISABLE();

    /* tim16 DMA DeInit */
    HAL_DMA_DeInit(tim_pwmHandle->hdma[TIM_DMA_ID_CC1]);
  }
}
