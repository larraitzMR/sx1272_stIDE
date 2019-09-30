/*
 * spi.c
 *
 *  Created on: 27 ago. 2019
 *      Author: Larraitz
 */

#include "includes.h"
#include "gpio.h"
#include "config.h"

void GPIO_Ports_Init(void)
{

  /* GPIO Ports Clock Enable */
  __GPIOE_CLK_ENABLE();
  __GPIOA_CLK_ENABLE();
  __GPIOB_CLK_ENABLE();

}

/* Private variables ---------------------------------------------------------*/
static GpioIrqHandler *GpioIrq[16] = { NULL };

/* Private function prototypes -----------------------------------------------*/

static uint8_t GPIO_GetBitPos(uint16_t GPIO_Pin);

/* Exported functions ---------------------------------------------------------*/
/*!
 * @brief Initializes the given GPIO object
 *
 * @param  GPIOx: where x can be (A..E and H)
 * @param  GPIO_Pin: specifies the port bit to be written.
 *                   This parameter can be one of GPIO_PIN_x where x can be (0..15).
 *                   All port bits are not necessarily available on all GPIOs.
 * @param [IN] initStruct  GPIO_InitTypeDef intit structure
 * @retval none
 */
void GPIO_Init( GPIO_TypeDef* port, uint16_t GPIO_Pin, GPIO_InitTypeDef* initStruct)
{

  RCC_GPIO_CLK_ENABLE(  (uint32_t) port);

  initStruct->Pin = GPIO_Pin ;

  HAL_GPIO_Init( port, initStruct );
}

/*!
 * @brief Records the interrupt handler for the GPIO  object
 *
 * @param  GPIOx: where x can be (A..E and H)
 * @param  GPIO_Pin: specifies the port bit to be written.
 *                   This parameter can be one of GPIO_PIN_x where x can be (0..15).
 *                   All port bits are not necessarily available on all GPIOs.
 * @param [IN] prio       NVIC priority (0 is highest)
 * @param [IN] irqHandler  points to the  function to execute
 * @retval none
 */
void GPIO_SetIrq( GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, uint32_t prio,  GpioIrqHandler *irqHandler )
{
  IRQn_Type IRQnb;

//  uint32_t BitPos = HW_GPIO_GetBitPos( GPIO_Pin ) ;
//
//  if ( irqHandler != NULL)
//  {
//    GpioIrq[ BitPos ] = irqHandler;
//
//    IRQnb = MSP_GetIRQn( GPIO_Pin );
//
//    HAL_NVIC_SetPriority( IRQnb , prio, 0);
//
//    HAL_NVIC_EnableIRQ( IRQnb );
//  }
}

/*!
 * @brief Execute the interrupt from the object
 *
 * @param  GPIO_Pin: specifies the port bit to be written.
 *                   This parameter can be one of GPIO_PIN_x where x can be (0..15).
 *                   All port bits are not necessarily available on all GPIOs.
 * @retval none
 */
void GPIO_IrqHandler( uint16_t GPIO_Pin )
{
  uint32_t BitPos = HW_GPIO_GetBitPos( GPIO_Pin );

  if ( GpioIrq[ BitPos ]  != NULL)
  {
    GpioIrq[ BitPos ] ( );
  }
}

/*!
 * @brief Writes the given value to the GPIO output
 *
 * @param  GPIO_Pin: specifies the port bit to be written.
 *                   This parameter can be one of GPIO_PIN_x where x can be (0..15).
 *                   All port bits are not necessarily available on all GPIOs.
 * @param [IN] value New GPIO output value
 * @retval none
 */
void GPIO_Write( GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin,  uint32_t value )
{
  HAL_GPIO_WritePin( GPIOx, GPIO_Pin , (GPIO_PinState) value );
}

/*!
 * @brief Reads the current GPIO input value
 *
 * @param  GPIOx: where x can be (A..E and H)
 * @param  GPIO_Pin: specifies the port bit to be written.
 *                   This parameter can be one of GPIO_PIN_x where x can be (0..15).
 *                   All port bits are not necessarily available on all GPIOs.
 * @retval value   Current GPIO input value
 */
uint32_t GPIO_Read( GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin )
{
  return HAL_GPIO_ReadPin( GPIOx, GPIO_Pin);
}

/* Private functions ---------------------------------------------------------*/

/*!
 * @brief Get the position of the bit set in the GPIO_Pin
 * @param  GPIO_Pin: specifies the port bit to be written.
 *                   This parameter can be one of GPIO_PIN_x where x can be (0..15).
 *                   All port bits are not necessarily available on all GPIOs.
 * @retval the position of the bit
 */
static uint8_t GPIO_GetBitPos(uint16_t GPIO_Pin)
{
  uint8_t PinPos=0;

  if ( ( GPIO_Pin & 0xFF00 ) != 0) { PinPos |= 0x8; }
  if ( ( GPIO_Pin & 0xF0F0 ) != 0) { PinPos |= 0x4; }
  if ( ( GPIO_Pin & 0xCCCC ) != 0) { PinPos |= 0x2; }
  if ( ( GPIO_Pin & 0xAAAA ) != 0) { PinPos |= 0x1; }

  return PinPos;
}

void GpioWrite( Gpio_t *obj, uint32_t value )
{
	if( ( obj == NULL ) || ( obj->port == NULL ) )
	{
		assert_param( FAIL );
	}
	// Check if pin is not connected
	if( obj->pin == NC )
	{
		return;
	}
	HAL_GPIO_WritePin( obj->port, obj->pinIndex , ( GPIO_PinState )value );
}

uint32_t GpioRead( Gpio_t *obj )
{
	if( obj == NULL )
	{
		assert_param( FAIL );
	}
	// Check if pin is not connected
	if( obj->pin == NC )
	{
		return 0;
	}
	return HAL_GPIO_ReadPin( obj->port, obj->pinIndex );
}

