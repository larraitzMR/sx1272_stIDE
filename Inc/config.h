/* LORA I/O definition */

#define RADIO_RESET_PORT                          GPIOC
#define RADIO_RESET_PIN                           GPIO_PIN_0

#define RADIO_MOSI_PORT                           GPIOA
#define RADIO_MOSI_PIN                            GPIO_PIN_7

#define RADIO_MISO_PORT                           GPIOA
#define RADIO_MISO_PIN                            GPIO_PIN_6

#define RADIO_SCLK_PORT                           GPIOB
#define RADIO_SCLK_PIN                            GPIO_PIN_3

#define RADIO_NSS_PORT                            GPIOA
#define RADIO_NSS_PIN                             GPIO_PIN_15

#define RADIO_DIO_0_PORT                          GPIOB
#define RADIO_DIO_0_PIN                           GPIO_PIN_4

#define RADIO_DIO_1_PORT                          GPIOB
#define RADIO_DIO_1_PIN                           GPIO_PIN_1

#define RADIO_DIO_2_PORT                          GPIOB
#define RADIO_DIO_2_PIN                           GPIO_PIN_0

#define RADIO_DIO_3_PORT                          GPIOC
#define RADIO_DIO_3_PIN                           GPIO_PIN_13

#ifdef RADIO_DIO_4
#define RADIO_DIO_4_PORT                          GPIOA
#define RADIO_DIO_4_PIN                           GPIO_PIN_5
#endif

#ifdef RADIO_DIO_5
#define RADIO_DIO_5_PORT                          GPIOA
#define RADIO_DIO_5_PIN                           GPIO_PIN_4
#endif

#define RADIO_TCXO_VCC_PORT                       GPIOA
#define RADIO_TCXO_VCC_PIN                        GPIO_PIN_12

#define RADIO_ANT_SWITCH_PORT_RX                  GPIOA //CRF1
#define RADIO_ANT_SWITCH_PIN_RX                   GPIO_PIN_1

#define RADIO_ANT_SWITCH_PORT_TX_BOOST            GPIOC //CRF3
#define RADIO_ANT_SWITCH_PIN_TX_BOOST             GPIO_PIN_1

#define RADIO_ANT_SWITCH_PORT_TX_RFO              GPIOC //CRF2
#define RADIO_ANT_SWITCH_PIN_TX_RFO               GPIO_PIN_2

/*  SPI MACRO redefinition */

#define SPI_CLK_ENABLE()                __HAL_RCC_SPI1_CLK_ENABLE()

#define SPI1_AF                          GPIO_AF0_SPI1

/* ADC MACRO redefinition */

#ifdef USE_STM32L0XX_NUCLEO
#define ADC_READ_CHANNEL                 ADC_CHANNEL_4
#define ADCCLK_ENABLE()                 __HAL_RCC_ADC1_CLK_ENABLE() ;
#define ADCCLK_DISABLE()                __HAL_RCC_ADC1_CLK_DISABLE() ;
#endif


/* --------------------------- RTC HW definition -------------------------------- */

#define RTC_OUTPUT       DBG_RTC_OUTPUT

#define RTC_Alarm_IRQn              RTC_IRQn
/* --------------------------- USART HW definition -------------------------------*/
#define USARTx                           USART2
#define USARTx_CLK_ENABLE()              __USART2_CLK_ENABLE();
#define USARTx_RX_GPIO_CLK_ENABLE()      __GPIOA_CLK_ENABLE()
#define USARTx_TX_GPIO_CLK_ENABLE()      __GPIOA_CLK_ENABLE()
#define DMAx_CLK_ENABLE()                __HAL_RCC_DMA1_CLK_ENABLE()

#define USARTx_FORCE_RESET()             __USART2_FORCE_RESET()
#define USARTx_RELEASE_RESET()           __USART2_RELEASE_RESET()


#define USARTx_TX_PIN                  GPIO_PIN_2
#define USARTx_TX_GPIO_PORT            GPIOA
#define USARTx_RX_PIN                  GPIO_PIN_3
#define USARTx_RX_GPIO_PORT            GPIOA

/* Definition for USARTx's NVIC */
#define USARTx_IRQn                      USART2_IRQn
#define USARTx_IRQHandler                USART2_IRQHandler


/* Definition for USARTx's DMA Request */
#define USARTx_TX_DMA_REQUEST             DMA_REQUEST_4

#define USARTx_Priority 0
#define USARTx_DMA_Priority 0

#define LED_Toggle( x )
#define LED_On( x )
#define LED_Off( x )

#ifdef __cplusplus
}
#endif

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

