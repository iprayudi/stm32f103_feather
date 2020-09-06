/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define FFT_SIZE 256
#define ADC_SIZE 256
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
DMA_HandleTypeDef hdma_adc1;

I2C_HandleTypeDef hi2c1;

/* USER CODE BEGIN PV */

#if (SIMULATED_DATA)
/*
 * signal frequency = 50kHz + 400kHz
 * sampling frequency = 1MHz
 * number of samples = 256
 */
uint16_t signal1[256] = {
		3072,3623,1902,3623,1762,2048,2333,472,2193,472,1024,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047,2966,1676,3850,2419,3071,3623,1902,3623,1762,2047,2333,472,2193,472,1023,1676,245,2419,1129,2047
};

/*
 * signal frequency = 200kHz + 250kHz
 * sampling frequency = 1MHz
 * number of samples = 256
 */
uint16_t signal2[256] = {
		3072,3022,1626,1446,2098,2048,1998,2650,2470,1074,1024,3022,3674,1446,50,2048,4046,2650,422,1074,3072,3022,1626,1446,2098,2048,1998,2649,2470,1074,1024,3022,3673,1446,50,2048,4045,2650,422,1074,3072,3022,1626,1446,2098,2048,1997,2650,2470,1074,1024,3022,3674,1446,50,2048,4046,2650,422,1074,3072,3021,1626,1446,2098,2048,1998,2650,2471,1074,1024,3022,3673,1446,50,2048,4046,2650,423,1074,3072,3022,1626,1446,2098,2048,1997,2650,2470,1075,1024,3022,3674,1446,50,2048,4046,2649,422,1074,3072,3022,1625,1446,2098,2048,1998,2650,2471,1074,1024,3022,3674,1446,51,2048,4046,2650,422,1074,3072,3021,1626,1447,2098,2048,1998,2649,2470,1074,1024,3022,3674,1446,50,2048,4046,2650,422,1074,3072,3022,1626,1446,2098,2048,1998,2650,2470,1074,1024,3022,3674,1446,50,2048,4045,2649,422,1074,3072,3022,1625,1446,2098,2048,1998,2649,2470,1074,1024,3021,3674,1446,50,2048,4046,2650,422,1074,3072,3022,1626,1447,2098,2048,1998,2650,2470,1074,1024,3022,3673,1446,50,2048,4046,2650,422,1074,3072,3022,1626,1446,2098,2048,1998,2650,2470,1074,1024,3022,3674,1446,50,2048,4045,2650,422,1074,3072,3022,1626,1446,2098,2048,1998,2650,2470,1075,1024,3022,3674,1446,50,2048,4046,2650,422,1074,3072,3022,1626,1446,2098,2048,1998,2650,2470,1074,1024,3022,3673,1446,51,2048
};
#endif


arm_rfft_fast_instance_f32 S;
float32_t pBuff[FFT_SIZE*2];
float32_t pDst[FFT_SIZE/2];
float32_t pSrc[FFT_SIZE];

extern uint8_t SSD1306_Buffer[SSD1306_WIDTH * SSD1306_HEIGHT / 8];

uint16_t adcRawData[ADC_SIZE];
char adcReadyFlag;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_ADC1_Init(void);
static void MX_I2C1_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void plotData(void)
{
	uint32_t pScaled,pMag;
	SSD1306_Fill(SSD1306_COLOR_BLACK);

	for (int i =0;i<128;i++)
	{
		pScaled=(uint32_t)pDst[i];// >> 1  ;
		pMag=(pScaled>64)?10:(64-pScaled);
		SSD1306_DrawLine(i,64,i,pMag,SSD1306_COLOR_WHITE);
	}
    SSD1306_UpdateScreen();
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
//	arm_status status;

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_I2C1_Init();
  /* USER CODE BEGIN 2 */
  SSD1306_Init(); // initialize the SSD1306 display

  while ( arm_rfft_fast_init_f32(&S,FFT_SIZE) != ARM_MATH_SUCCESS );

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  HAL_ADC_Start_DMA(&hadc1, (uint32_t*)adcRawData, ADC_SIZE);
  adcReadyFlag=0;

#if (SIMULATED_DATA)
  int k=0;
#endif

  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	  HAL_Delay(150);
	  if (adcReadyFlag==1)
	  {
		  HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_RESET);

#if (SIMULATED_DATA)
		  if (k==0)
		  {
			  for (int i=0; i<FFT_SIZE;i++)
			  		  {
			  			  pSrc[i]=(float32_t) signal2[i];
			  			  pSrc[i]=pSrc[i]*0.000805f;
			  		  }
			  k=1;
		  }
		  else
		  {
			  for (int i=0; i<FFT_SIZE;i++)
			  		  {
			  			  pSrc[i]=(float32_t) signal1[i];
			  			  pSrc[i]=pSrc[i]*0.000805f;
			  		  }
			  k=0;
		  }
#else
		  for (int i=0; i<FFT_SIZE;i++)
		  {
			  pSrc[i]=(float32_t) adcRawData[i];
			  pSrc[i]=pSrc[i]*0.000805f;
		  }
#endif

		  /* do FFT */
		  arm_rfft_fast_f32(&S,pSrc, pBuff,0);
		  arm_cmplx_mag_f32(pBuff,pDst,FFT_SIZE);

		  plotData();

		  adcReadyFlag=0;

		  HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_SET);
		  HAL_ADC_Start_DMA(&hadc1, (uint32_t*)adcRawData, ADC_SIZE);
	  }
  }

  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI_DIV2;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
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

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC;
  PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV4;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */
  /** Common config
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ScanConvMode = ADC_SCAN_DISABLE;
  hadc1.Init.ContinuousConvMode = ENABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 1;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_0;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 100000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

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
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : LED_Pin */
  GPIO_InitStruct.Pin = LED_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LED_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
{

//	HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
	__NOP();
	adcReadyFlag=1;
  /* Prevent unused argument(s) compilation warning */
//  UNUSED(hadc);
  /* NOTE : This function should not be modified. When the callback is needed,
            function HAL_ADC_ConvCpltCallback must be implemented in the user file.
   */
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
