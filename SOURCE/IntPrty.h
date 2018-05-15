typedef enum IRQPrty
{
/******  Cortex-M4 Processor Exceptions Numbers ****************************************************************/ 
  SysTick_Prty                = 15,     /*!< 15 Cortex-M4 System Tick Interrupt                                */
/******  STM32 specific Interrupt Numbers **********************************************************************/
  WWDG_Prty                   = 15,      /*!< Window WatchDog Interrupt                                         */
  PVD_Prty                    = 15,      /*!< PVD through EXTI Line detection Interrupt                         */
  TAMP_STAMP_Prty             = 15,      /*!< Tamper and TimeStamp interrupts through the EXTI line             */
  RTC_WKUP_Prty               = 15,      /*!< RTC Wakeup interrupt through the EXTI line                        */
  FLASH_Prty                  = 15,      /*!< FLASH global Interrupt                                            */
  RCC_Prty                    = 15,      /*!< RCC global Interrupt                                              */
  EXTI0_Prty                  = 15,      /*!< EXTI Line0 Interrupt                                              */
  EXTI1_Prty                  = 15,      /*!< EXTI Line1 Interrupt                                              */
  EXTI2_Prty                  = 15,      /*!< EXTI Line2 Interrupt                                              */
  EXTI3_Prty                  = 15,      /*!< EXTI Line3 Interrupt                                              */
  EXTI4_Prty                  = 15,     /*!< EXTI Line4 Interrupt                                              */
  DMA1_Stream0_Prty           = 15,     /*!< DMA1 Stream 0 global Interrupt                                    */
  DMA1_Stream1_Prty           = 15,     /*!< DMA1 Stream 1 global Interrupt                                    */
  DMA1_Stream2_Prty           = 15,     /*!< DMA1 Stream 2 global Interrupt                                    */
  DMA1_Stream3_Prty           = 15,     /*!< DMA1 Stream 3 global Interrupt                                    */
  DMA1_Stream4_Prty           = 15,     /*!< DMA1 Stream 4 global Interrupt                                    */
  DMA1_Stream5_Prty           = 15,     /*!< DMA1 Stream 5 global Interrupt                                    */
  DMA1_Stream6_Prty           = 15,     /*!< DMA1 Stream 6 global Interrupt                                    */
  ADC_Prty                    = 15,     /*!< ADC1, ADC2 and ADC3 global Interrupts                             */
	/* STM32F429_439xx */
  CAN1_TX_Prty                = 15,     /*!< CAN1 TX Interrupt                                                 */
  CAN1_RX0_Prty               = 15,     /*!< CAN1 RX0 Interrupt                                                */
  CAN1_RX1_Prty               = 15,     /*!< CAN1 RX1 Interrupt                                                */
  CAN1_SCE_Prty               = 15,     /*!< CAN1 SCE Interrupt                                                */
  EXTI9_5_Prty                = 15,     /*!< External Line[9:5] Interrupts                                     */
  TIM1_BRK_TIM9_Prty		= 0,     				/*!< TIM1 Break interrupt and TIM9 global interrupt                    */
  TIM1_UP_TIM10_Prty    = 1,     				/*!< TIM1 Update Interrupt and TIM10 global interrupt                  */
  TIM1_TRG_COM_TIM11_Prty     = 15,     /*!< TIM1 Trigger and Commutation Interrupt and TIM11 global interrupt */
  TIM1_CC_Prty                = 15,     /*!< TIM1 Capture Compare Interrupt                                    */
  TIM2_Prty             = 2,     				/*!< TIM2 global Interrupt                                             */
  TIM3_Prty             = 2,     				/*!< TIM3 global Interrupt                                             */
  TIM4_Prty                   = 15,     /*!< TIM4 global Interrupt                                             */
  I2C1_EV_Prty                = 15,     /*!< I2C1 Event Interrupt                                              */
  I2C1_ER_Prty                = 15,     /*!< I2C1 Error Interrupt                                              */
  I2C2_EV_Prty                = 15,     /*!< I2C2 Event Interrupt                                              */
  I2C2_ER_Prty                = 15,     /*!< I2C2 Error Interrupt                                              */  
  SPI1_Prty                   = 15,     /*!< SPI1 global Interrupt                                             */
  SPI2_Prty                   = 15,     /*!< SPI2 global Interrupt                                             */
  USART1_Prty                 = 15,     /*!< USART1 global Interrupt                                           */
  USART2_Prty                 = 15,     /*!< USART2 global Interrupt                                           */
  USART3_Prty                 = 15,     /*!< USART3 global Interrupt                                           */
  EXTI15_10_Prty              = 15,     /*!< External Line[15:10] Interrupts                                   */
  RTC_Alarm_Prty              = 15,     /*!< RTC Alarm (A and B) through EXTI Line Interrupt                   */
  OTG_FS_WKUP_Prty            = 15,     /*!< USB OTG FS Wakeup through EXTI line interrupt                     */    
  TIM8_BRK_TIM12_Prty		= 0,     				/*!< TIM8 Break Interrupt and TIM12 global interrupt                   */
  TIM8_UP_TIM13_Prty    = 1,     				/*!< TIM8 Update Interrupt and TIM13 global interrupt                  */
  TIM8_TRG_COM_TIM14_Prty     = 15,     /*!< TIM8 Trigger and Commutation Interrupt and TIM14 global interrupt */
  TIM8_CC_Prty                = 15,     /*!< TIM8 Capture Compare Interrupt                                    */
  DMA1_Stream7_Prty           = 15,     /*!< DMA1 Stream7 Interrupt                                            */
  FMC_Prty                    = 15,     /*!< FMC global Interrupt                                              */
  SDIO_Prty                   = 15,     /*!< SDIO global Interrupt                                             */
  TIM5_Prty             = 2,     				/*!< TIM5 global Interrupt                                             */
  SPI3_Prty                   = 15,     /*!< SPI3 global Interrupt                                             */
  UART4_Prty                  = 15,     /*!< UART4 global Interrupt                                            */
  UART5_Prty                  = 15,     /*!< UART5 global Interrupt                                            */
  TIM6_DAC_Prty               = 15,     /*!< TIM6 global and DAC1&2 underrun error  interrupts                 */
  TIM7_Prty                   = 15,     /*!< TIM7 global interrupt                                             */
  DMA2_Stream0_Prty     = 1,     				/*!< DMA2 Stream 0 global Interrupt   SPI4_RX DMA TC                   */
  DMA2_Stream1_Prty           = 15,     /*!< DMA2 Stream 1 global Interrupt                                    */
  DMA2_Stream2_Prty           = 15,     /*!< DMA2 Stream 2 global Interrupt                                    */
  DMA2_Stream3_Prty           = 15,     /*!< DMA2 Stream 3 global Interrupt                                    */
  DMA2_Stream4_Prty     = 3,     				/*!< DMA2 Stream 4 global Interrupt  	ADC DMA                          */
  ETH_Prty                    = 15,     /*!< Ethernet global Interrupt                                         */
  ETH_WKUP_Prty               = 15,     /*!< Ethernet Wakeup through EXTI line Interrupt                       */
  CAN2_TX_Prty                = 15,     /*!< CAN2 TX Interrupt                                                 */
  CAN2_RX0_Prty               = 15,     /*!< CAN2 RX0 Interrupt                                                */
  CAN2_RX1_Prty               = 15,     /*!< CAN2 RX1 Interrupt                                                */
  CAN2_SCE_Prty               = 15,     /*!< CAN2 SCE Interrupt                                                */
  OTG_FS_Prty                 = 15,     /*!< USB OTG FS global Interrupt                                       */
  DMA2_Stream5_Prty           = 15,     /*!< DMA2 Stream 5 global interrupt                                    */
  DMA2_Stream6_Prty           = 15,     /*!< DMA2 Stream 6 global interrupt                                    */
  DMA2_Stream7_Prty           = 15,     /*!< DMA2 Stream 7 global interrupt                                    */
  USART6_Prty                 = 15,     /*!< USART6 global interrupt                                           */
  I2C3_EV_Prty                = 15,     /*!< I2C3 event interrupt                                              */
  I2C3_ER_Prty                = 15,     /*!< I2C3 error interrupt                                              */
  OTG_HS_EP1_OUT_Prty         = 15,     /*!< USB OTG HS End Point 1 Out global interrupt                       */
  OTG_HS_EP1_IN_Prty          = 15,     /*!< USB OTG HS End Point 1 In global interrupt                        */
  OTG_HS_WKUP_Prty            = 15,     /*!< USB OTG HS Wakeup through EXTI interrupt                          */
  OTG_HS_Prty                 = 15,     /*!< USB OTG HS global interrupt                                       */
  DCMI_Prty                   = 15,     /*!< DCMI global interrupt                                             */
  CRYP_Prty                   = 15,     /*!< CRYP crypto global interrupt                                      */
  HASH_RNG_Prty               = 15,     /*!< Hash and Rng global interrupt                                     */
  FPU_Prty                    = 15,     /*!< FPU global interrupt                                              */
  UART7_Prty                  = 15,     /*!< UART7 global interrupt                                            */
  UART8_Prty                  = 15,     /*!< UART8 global interrupt                                            */
  SPI4_Prty                   = 15,     /*!< SPI4 global Interrupt                                             */
  SPI5_Prty                   = 15,     /*!< SPI5 global Interrupt                                             */
  SPI6_Prty                   = 15,     /*!< SPI6 global Interrupt                                             */
  SAI1_Prty                   = 15,     /*!< SAI1 global Interrupt                                             */
  LTDC_Prty                   = 15,     /*!< LTDC global Interrupt                                             */
  LTDC_ER_Prty                = 15,     /*!< LTDC Error global Interrupt                                       */
  DMA2D_Prty                  = 15     /*!< DMA2D global Interrupt                                            */ 
  
} IRQPrty_Type;
