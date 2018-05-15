#include "stm32f4xx.h"
#include "global.h"


__align(4) unsigned short CRCTable[256] = {
					0x0000, 0xC0C1, 0xC181, 0x0140, 0xC301, 0x03C0, 0x0280, 0xC241,
					0xC601, 0x06C0, 0x0780, 0xC741, 0x0500, 0xC5C1, 0xC481, 0x0440,
					0xCC01, 0x0CC0, 0x0D80, 0xCD41, 0x0F00, 0xCFC1, 0xCE81, 0x0E40,
					0x0A00, 0xCAC1, 0xCB81, 0x0B40, 0xC901, 0x09C0, 0x0880, 0xC841,
					0xD801, 0x18C0, 0x1980, 0xD941, 0x1B00, 0xDBC1, 0xDA81, 0x1A40,
					0x1E00, 0xDEC1, 0xDF81, 0x1F40, 0xDD01, 0x1DC0, 0x1C80, 0xDC41,
					0x1400, 0xD4C1, 0xD581, 0x1540, 0xD701, 0x17C0, 0x1680, 0xD641,
					0xD201, 0x12C0, 0x1380, 0xD341, 0x1100, 0xD1C1, 0xD081, 0x1040,
					0xF001, 0x30C0, 0x3180, 0xF141, 0x3300, 0xF3C1, 0xF281, 0x3240,
					0x3600, 0xF6C1, 0xF781, 0x3740, 0xF501, 0x35C0, 0x3480, 0xF441,
					0x3C00, 0xFCC1, 0xFD81, 0x3D40, 0xFF01, 0x3FC0, 0x3E80, 0xFE41,
					0xFA01, 0x3AC0, 0x3B80, 0xFB41, 0x3900, 0xF9C1, 0xF881, 0x3840,
					0x2800, 0xE8C1, 0xE981, 0x2940, 0xEB01, 0x2BC0, 0x2A80, 0xEA41,
					0xEE01, 0x2EC0, 0x2F80, 0xEF41, 0x2D00, 0xEDC1, 0xEC81, 0x2C40,
					0xE401, 0x24C0, 0x2580, 0xE541, 0x2700, 0xE7C1, 0xE681, 0x2640,
					0x2200, 0xE2C1, 0xE381, 0x2340, 0xE101, 0x21C0, 0x2080, 0xE041,
					0xA001, 0x60C0, 0x6180, 0xA141, 0x6300, 0xA3C1, 0xA281, 0x6240,
					0x6600, 0xA6C1, 0xA781, 0x6740, 0xA501, 0x65C0, 0x6480, 0xA441,
					0x6C00, 0xACC1, 0xAD81, 0x6D40, 0xAF01, 0x6FC0, 0x6E80, 0xAE41,
					0xAA01, 0x6AC0, 0x6B80, 0xAB41, 0x6900, 0xA9C1, 0xA881, 0x6840,
					0x7800, 0xB8C1, 0xB981, 0x7940, 0xBB01, 0x7BC0, 0x7A80, 0xBA41,
					0xBE01, 0x7EC0, 0x7F80, 0xBF41, 0x7D00, 0xBDC1, 0xBC81, 0x7C40,
					0xB401, 0x74C0, 0x7580, 0xB541, 0x7700, 0xB7C1, 0xB681, 0x7640,
					0x7200, 0xB2C1, 0xB381, 0x7340, 0xB101, 0x71C0, 0x7080, 0xB041,
					0x5000, 0x90C1, 0x9181, 0x5140, 0x9301, 0x53C0, 0x5280, 0x9241,
					0x9601, 0x56C0, 0x5780, 0x9741, 0x5500, 0x95C1, 0x9481, 0x5440,
					0x9C01, 0x5CC0, 0x5D80, 0x9D41, 0x5F00, 0x9FC1, 0x9E81, 0x5E40,
					0x5A00, 0x9AC1, 0x9B81, 0x5B40, 0x9901, 0x59C0, 0x5880, 0x9841,
					0x8801, 0x48C0, 0x4980, 0x8941, 0x4B00, 0x8BC1, 0x8A81, 0x4A40,
					0x4E00, 0x8EC1, 0x8F81, 0x4F40, 0x8D01, 0x4DC0, 0x4C80, 0x8C41,
					0x4400, 0x84C1, 0x8581, 0x4540, 0x8701, 0x47C0, 0x4680, 0x8641,
					0x8201, 0x42C0, 0x4380, 0x8341, 0x4100, 0x81C1, 0x8081, 0x4040};	



__align(4) unsigned char USART1_TX_Buff[USART_Buff_length];
__align(4) unsigned char USART1_RX_Buff[USART_Buff_length];
					
__align(4) unsigned char USART2_TX_Buff[USART_Buff_length];
__align(4) unsigned char USART2_RX_Buff[USART_Buff_length];
					
__align(4) unsigned char USART3_TX_Buff[USART_Buff_length];
__align(4) unsigned char USART3_RX_Buff[USART_Buff_length];
					
__align(4) unsigned char USART4_TX_Buff[USART_Buff_length];
__align(4) unsigned char USART4_RX_Buff[USART_Buff_length];
					
__align(4) unsigned char USART5_TX_Buff[USART_Buff_length];
__align(4) unsigned char USART5_RX_Buff[USART_Buff_length];
					
__align(4) unsigned char USART6_TX_Buff[USART_Buff_length];
__align(4) unsigned char USART6_RX_Buff[USART_Buff_length];

__align(4) unsigned char USART7_TX_Buff[USART_Buff_length];
__align(4) unsigned char USART7_RX_Buff[USART_Buff_length];

__align(4) unsigned char USART8_TX_Buff[USART_Buff_length];
__align(4) unsigned char USART8_RX_Buff[USART_Buff_length];

static short ParitySelect[4] = { USART_CR1_M|USART_CR1_PCE|USART_CR1_PS, USART_CR1_M|USART_CR1_PCE, 0x0000, 0x0000 };
																	/* Odd parity	*/												/* Even parity */					 
static int 	 SpeedSelect[8]  = { 9600, 19200, 38400, 57600, 115200, 230400, 460800, 5250000 };

int UsartDefaultHandler(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum) {return 0;}

UsartProc_Type USART1_Proc = UsartDefaultHandler;
UsartProc_Type USART2_Proc = UsartDefaultHandler;
UsartProc_Type USART3_Proc = UsartDefaultHandler;
UsartProc_Type USART4_Proc = UsartDefaultHandler;
UsartProc_Type USART5_Proc = UsartDefaultHandler;
UsartProc_Type USART6_Proc = UsartDefaultHandler;
UsartProc_Type USART7_Proc = UsartDefaultHandler;
UsartProc_Type USART8_Proc = UsartDefaultHandler;


unsigned short CalcCRC(int Count, unsigned char *Buff) {
  unsigned short CRCCode = 0xFFFF;
  int i;
	for (i = 0; i < Count; i++) CRCCode = ((CRCCode >> 8) & 0xFF) ^ CRCTable[(CRCCode ^ Buff[i]) & 0xFF];
	return CRCCode;
}

int  ModbusErr(int ErrCode, unsigned char *RxBuff, unsigned char *TxBuff) {
unsigned short CRCCode;
	((short *)TxBuff)[0] = ((short *)RxBuff)[0] | 0x8000;
	TxBuff[2] = ErrCode;
	CRCCode   = CalcCRC(3, TxBuff);
	TxBuff[3] = CRCCode;
	TxBuff[4] = CRCCode >> 8;
	return 5;
}	


void InitUsart(int Channel, int Params, UsartProc_Type Proc) {

	switch (Channel) {
	  case 1:		{	/*USART1 with DMA RECIEVE & TRANSMIT Configuration																								*/
#if (USART1_PRESENT == YES)			
								if (RCC->APB2ENR & RCC_APB2ENR_USART1EN) return;						/* Already init												*/
								RCC->APB2ENR |= RCC_APB2ENR_USART1EN;												/* USART1 Clock Enable								*/
			
								USART1_Proc 	= Proc;
	
								RCC->AHB1ENR |= RCC_AHB1ENR_DMA2EN;													/* DMA2 Clock enable									*/

								/* Recieve DMA Configuration	-------------------------------------------------------------------	*/
								DMA2->HIFCR				 	= (0x3Dul << 6);												/* Clear DMA interrupr status bits		*/
								DMA2_Stream5->PAR 	= (unsigned int)&(USART1->DR);
								DMA2_Stream5->M0AR 	= (unsigned int)USART1_RX_Buff;
								DMA2_Stream5->NDTR 	= USART_Buff_length;
								DMA2_Stream5->CR	 	= (4ul << 25) 	|												/* Channel #4													*/
																			(0ul<< 6)			|												/* Data transfer direction P-to-M			*/
																			DMA_SxCR_MINC	|												/* Memory increment mode							*/
																			DMA_SxCR_EN;													/* Channel enable											*/

								/* Transmit DMA Configuration	------------------------------------------------------------------- */	
								DMA2->HIFCR				 	= (0x3Dul << 22);												/* Clear DMA interrupr status bits		*/
								DMA2_Stream7->PAR 	= (unsigned int)&(USART1->DR);
							//DMA2_Stream7->M0AR 	= (unsigned int)USART1_TX_Buff;
							//DMA2_Stream7->NDTR 	= USART1_TX_Count;
								DMA2_Stream7->CR	 	= (4ul << 25) 		|											/* Channel #4													*/
																			(1ul<< 6)				|											/* Data transfer direction M-to-P			*/
																			DMA_SxCR_MINC;												/* Memory increment mode							*/

								USART1->BRR	  			=	APB2CLK / SpeedSelect[(Params & 0x700) >> 8];	/* Set Baudrate										*/
								USART1->CR3					= USART_CR3_DMAT	|											/* USART1 DMA Transmit										*/
																			USART_CR3_DMAR;												/* USART1 DMA Recieve											*/
	
								USART1->CR2					= (Params & 0x01) << 13;								/* 2 Stop bits if Bit 0 in Params set			*/
	
								USART1->CR1					=	USART_CR1_RE			|										/* Reciever enable												*/
																			USART_CR1_TE			|										/* Transmitter enable											*/
																			USART_CR1_IDLEIE	|										/* IDLE Interrupt Enable									*/
																			USART_CR1_TCIE		|										/* Transmission complete interrupt enable	*/
																			ParitySelect[(Params & 0x06) >> 1] |	/* Parity select													*/
																			USART_CR1_UE;													/* USART Enable														*/

								NVIC_SetPriority(USART1_IRQn, USART1_Prty);
								NVIC_EnableIRQ(USART1_IRQn);																/* USART1	Interrupr enable								*/
#endif
							} break;
	  case 2:		{	/*USART2 with DMA RECIEVE & TRANSMIT Configuration																								*/
#if (USART2_PRESENT == YES)			
								if (RCC->APB1ENR & RCC_APB1ENR_USART2EN) return;						/* Already init												*/
								RCC->APB1ENR |= RCC_APB1ENR_USART2EN;												/* USART2 Clock Enable								*/
			
								USART2_Proc 	= Proc;
	
								RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;													/* DMA1 Clock enable									*/

								/* Recieve DMA Configuration	-------------------------------------------------------------------	*/
								DMA1->HIFCR				 	= (0x3Dul << 6);												/* Clear DMA interrupr status bits		*/
								DMA1_Stream5->PAR 	= (unsigned int)&(USART2->DR);
								DMA1_Stream5->M0AR 	= (unsigned int)USART2_RX_Buff;
								DMA1_Stream5->NDTR 	= USART_Buff_length;
								DMA1_Stream5->CR	 	= (4ul << 25) 	|												/* Channel #4													*/
																			(0ul<< 6)			|												/* Data transfer direction P-to-M			*/
																			DMA_SxCR_MINC	|												/* Memory increment mode							*/
																			DMA_SxCR_EN;													/* Channel enable											*/

								/* Transmit DMA Configuration	------------------------------------------------------------------- */	
								DMA1->HIFCR				 	= (0x3Dul << 16);												/* Clear DMA interrupr status bits		*/
								DMA1_Stream6->PAR 	= (unsigned int)&(USART2->DR);
							//DMA1_Stream6->M0AR 	= (unsigned int)USART2_TX_Buff;
							//DMA1_Stream6->NDTR 	= USART2_TX_Count;
								DMA1_Stream6->CR	 	= (4ul << 25) 		|											/* Channel #4													*/
																			(1ul<< 6)				|											/* Data transfer direction M-to-P			*/
																			DMA_SxCR_MINC;												/* Memory increment mode							*/

								USART2->BRR	  			=	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];	/* Set Baudrate										*/
								USART2->CR3					= USART_CR3_DMAT	|											/* USART2 DMA Transmit										*/
																			USART_CR3_DMAR;												/* USART2 DMA Recieve											*/
	
								USART2->CR2					= (Params & 0x01) << 13;								/* 2 Stop bits if Bit 0 in Params set			*/
	
								USART2->CR1					=	USART_CR1_RE			|										/* Reciever enable												*/
																			USART_CR1_TE			|										/* Transmitter enable											*/
																			USART_CR1_IDLEIE	|										/* IDLE Interrupt Enable									*/
																			USART_CR1_TCIE		|										/* Transmission complete interrupt enable	*/
																			ParitySelect[(Params & 0x06) >> 1] |	/* Parity select													*/
																			USART_CR1_UE;													/* USART Enable														*/

								NVIC_SetPriority(USART2_IRQn, USART2_Prty);
								NVIC_EnableIRQ(USART2_IRQn);																/* USART2	Interrupr enable								*/
#endif
							} break;
	  case 3:		{	/*USART3 with DMA RECIEVE & TRANSMIT Configuration																								*/
#if (USART3_PRESENT == YES)			
								if (RCC->APB1ENR & RCC_APB1ENR_USART3EN) return;						/* Already init												*/
								RCC->APB1ENR |= RCC_APB1ENR_USART3EN;												/* USART3 Clock Enable								*/
			
								USART3_Proc 	= Proc;
	
								RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;													/* DMA1 Clock enable									*/

								/* Recieve DMA Configuration	-------------------------------------------------------------------	*/
								DMA1->LIFCR				 	= (0x3Dul << 6);												/* Clear DMA interrupr status bits		*/
								DMA1_Stream1->PAR 	= (unsigned int)&(USART3->DR);
								DMA1_Stream1->M0AR 	= (unsigned int)USART3_RX_Buff;
								DMA1_Stream1->NDTR 	= USART_Buff_length;
								DMA1_Stream1->CR	 	= (4ul << 25) 	|												/* Channel #4													*/
																			(0ul<< 6)			|												/* Data transfer direction P-to-M			*/
																			DMA_SxCR_MINC	|												/* Memory increment mode							*/
																			DMA_SxCR_EN;													/* Channel enable											*/

								/* Transmit DMA Configuration	------------------------------------------------------------------- */	
								DMA1->LIFCR				 	= (0x3Dul << 22);												/* Clear DMA interrupr status bits		*/
								DMA1_Stream3->PAR 	= (unsigned int)&(USART3->DR);
							//DMA1_Stream3->M0AR 	= (unsigned int)USART3_TX_Buff;
							//DMA1_Stream3->NDTR 	= USART3_TX_Count;
								DMA1_Stream3->CR	 	= (4ul << 25) 		|											/* Channel #4													*/
																			(1ul<< 6)				|											/* Data transfer direction M-to-P			*/
																			DMA_SxCR_MINC;												/* Memory increment mode							*/

								USART3->BRR	  			=	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];	/* Set Baudrate										*/
								USART3->CR3					= USART_CR3_DMAT	|											/* USART3 DMA Transmit										*/
																			USART_CR3_DMAR;												/* USART3 DMA Recieve											*/
	
								USART3->CR2					= (Params & 0x01) << 13;								/* 2 Stop bits if Bit 0 in Params set			*/
	
								USART3->CR1					=	USART_CR1_RE			|										/* Reciever enable												*/
																			USART_CR1_TE			|										/* Transmitter enable											*/
																			USART_CR1_IDLEIE	|										/* IDLE Interrupt Enable									*/
																			USART_CR1_TCIE		|										/* Transmission complete interrupt enable	*/
																			ParitySelect[(Params & 0x06) >> 1] |	/* Parity select													*/
																			USART_CR1_UE;													/* USART Enable														*/

								NVIC_SetPriority(USART3_IRQn, USART3_Prty);
								NVIC_EnableIRQ(USART3_IRQn);																/* USART3	Interrupr enable								*/
#endif
							} break;
		case 4:		{	/*USART4 with DMA RECIEVE & TRANSMIT Configuration																								*/
#if (UART4_PRESENT == YES)		
								if (RCC->APB1ENR & RCC_APB1ENR_UART4EN) return;							/* Already init												*/
								RCC->APB1ENR |= RCC_APB1ENR_UART4EN;												/* UART4 Clock Enable									*/

								USART4_Proc 	= Proc;
	
								RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;													/* DMA1 Clock enable									*/

								/* Recieve DMA Configuration	-------------------------------------------------------------------	*/
								DMA1->LIFCR				 	= (0x3Dul << 16);												/* Clear DMA interrupr status bits		*/
								DMA1_Stream2->PAR 	= (unsigned int)&(UART4->DR);
								DMA1_Stream2->M0AR 	= (unsigned int)USART4_RX_Buff;
								DMA1_Stream2->NDTR 	= USART_Buff_length;
								DMA1_Stream2->CR	 	= (4ul << 25) 	|												/* Channel #4													*/
																			(0ul<< 6)			|												/* Data transfer direction P-to-M			*/
																			DMA_SxCR_MINC	|												/* Memory increment mode							*/
																			DMA_SxCR_EN;													/* Channel enable											*/

								/* Transmit DMA Configuration	------------------------------------------------------------------- */	
								DMA1->HIFCR				 	= (0x3Dul << 0);												/* Clear DMA interrupr status bits		*/
								DMA1_Stream4->PAR 	= (unsigned int)&(UART4->DR);
							//DMA1_Stream4->M0AR 	= (unsigned int)USART4_TX_Buff;
							//DMA1_Stream4->NDTR 	= USART4_TX_Count;
								DMA1_Stream4->CR	 	= (4ul << 25) 		|											/* Channel #4													*/
																			(1ul<< 6)				|											/* Data transfer direction M-to-P			*/
																			DMA_SxCR_MINC;												/* Memory increment mode							*/

								UART4->BRR	  			=	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];	/* Set Baudrate										*/
								UART4->CR3					= USART_CR3_DMAT	|											/* UART4 DMA Transmit											*/
																			USART_CR3_DMAR;												/* UART4 DMA Recieve											*/
	
								UART4->CR2					= (Params & 0x01) << 13;								/* 2 Stop bits if Bit 0 in Params set			*/
	
								UART4->CR1					=	USART_CR1_RE			|										/* Reciever enable												*/
																			USART_CR1_TE			|										/* Transmitter enable											*/
																			USART_CR1_IDLEIE	|										/* IDLE Interrupt Enable									*/
																			USART_CR1_TCIE		|										/* Transmission complete interrupt enable	*/
																			ParitySelect[(Params & 0x06) >> 1] |	/* Parity select													*/
																			USART_CR1_UE;													/* USART Enable														*/

								NVIC_SetPriority(UART4_IRQn, UART4_Prty);
								NVIC_EnableIRQ(UART4_IRQn);																	/* UART4	Interrupr enable								*/
#endif								
							} break;
		case 5:		{	/*USART5 with DMA RECIEVE & TRANSMIT Configuration																								*/
#if (UART5_PRESENT == YES)
								if (RCC->APB1ENR & RCC_APB1ENR_UART5EN) return;							/* Already init												*/
								RCC->APB1ENR |= RCC_APB1ENR_UART5EN;												/* UART5 Clock Enable									*/

								USART5_Proc 	= Proc;
	
								RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;													/* DMA1 Clock enable									*/

								/* Recieve DMA Configuration	-------------------------------------------------------------------	*/
								DMA1->LIFCR				 	= (0x3Dul << 0);												/* Clear DMA interrupr status bits		*/
								DMA1_Stream0->PAR 	= (unsigned int)&(UART5->DR);
								DMA1_Stream0->M0AR 	= (unsigned int)USART5_RX_Buff;
								DMA1_Stream0->NDTR 	= USART_Buff_length;
								DMA1_Stream0->CR	 	= (4ul << 25) 	|												/* Channel #4													*/
																			(0ul<< 6)			|												/* Data transfer direction P-to-M			*/
																			DMA_SxCR_MINC	|												/* Memory increment mode							*/
																			DMA_SxCR_EN;													/* Channel enable											*/

								/* Transmit DMA Configuration	------------------------------------------------------------------- */	
								DMA1->HIFCR				 	= (0x3Dul << 22);												/* Clear DMA interrupr status bits		*/
								DMA1_Stream7->PAR 	= (unsigned int)&(UART5->DR);
							//DMA1_Stream7->M0AR 	= (unsigned int)USART5_TX_Buff;
							//DMA1_Stream7->NDTR 	= USART5_TX_Count;
								DMA1_Stream7->CR	 	= (4ul << 25) 		|											/* Channel #4													*/
																			(1ul<< 6)				|											/* Data transfer direction M-to-P			*/
																			DMA_SxCR_MINC;												/* Memory increment mode							*/

								UART5->BRR	  			=	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];	/* Set Baudrate										*/
								UART5->CR3					= USART_CR3_DMAT	|											/* UART5 DMA Transmit											*/
																			USART_CR3_DMAR;												/* UART5 DMA Recieve											*/
	
								UART5->CR2					= (Params & 0x01) << 13;								/* 2 Stop bits if Bit 0 in Params set			*/
	
								UART5->CR1					=	USART_CR1_RE			|										/* Reciever enable												*/
																			USART_CR1_TE			|										/* Transmitter enable											*/
																			USART_CR1_IDLEIE	|										/* IDLE Interrupt Enable									*/
																			USART_CR1_TCIE		|										/* Transmission complete interrupt enable	*/
																			ParitySelect[(Params & 0x06) >> 1] |	/* Parity select													*/
																			USART_CR1_UE;													/* UART Enable														*/

								NVIC_SetPriority(UART5_IRQn, UART5_Prty);
								NVIC_EnableIRQ(UART5_IRQn);																	/* UART5	Interrupr enable								*/
#endif								
							} break;		
		case 6:		{	/*USART6 with DMA RECIEVE & TRANSMIT Configuration																								*/
#if (USART6_PRESENT == YES)	
								if (RCC->APB2ENR & RCC_APB2ENR_USART6EN) return;						/* Already init												*/
								RCC->APB2ENR |= RCC_APB2ENR_USART6EN;												/* USART6 Clock Enable								*/

								USART6_Proc 	= Proc;
	
								RCC->AHB1ENR |= RCC_AHB1ENR_DMA2EN;													/* DMA2 Clock enable									*/

								/* Recieve DMA Configuration	-------------------------------------------------------------------	*/
								DMA2->LIFCR				 	= (0x3Dul << 16);												/* Clear DMA interrupr status bits		*/
								DMA2_Stream2->PAR 	= (unsigned int)&(USART6->DR);
								DMA2_Stream2->M0AR 	= (unsigned int)USART6_RX_Buff;
								DMA2_Stream2->NDTR 	= USART_Buff_length;
								DMA2_Stream2->CR	 	= (5ul << 25) 	|												/* Channel #5													*/
																			(0ul<< 6)			|												/* Data transfer direction P-to-M			*/
																			DMA_SxCR_MINC	|												/* Memory increment mode							*/
																			DMA_SxCR_EN;													/* Channel enable											*/

								/* Transmit DMA Configuration	------------------------------------------------------------------- */	
								DMA2->HIFCR				 	= (0x3Dul << 16);												/* Clear DMA interrupr status bits		*/
								DMA2_Stream6->PAR 	= (unsigned int)&(USART6->DR);
							//DMA2_Stream6->M0AR 	= (unsigned int)USART6_TX_Buff;
							//DMA2_Stream6->NDTR 	= USART5_TX_Count;
								DMA2_Stream6->CR	 	= (5ul << 25) 		|											/* Channel #5													*/
																			(1ul<< 6)				|											/* Data transfer direction M-to-P			*/
																			DMA_SxCR_MINC;												/* Memory increment mode							*/

								USART6->BRR	  			=	APB2CLK / SpeedSelect[(Params & 0x700) >> 8];	/* Set Baudrate										*/
								USART6->CR3					= USART_CR3_DMAT	|											/* USART6 DMA Transmit										*/
																			USART_CR3_DMAR;												/* USART6 DMA Recieve											*/
	
								USART6->CR2					= (Params & 0x01) << 13;								/* 2 Stop bits if Bit 0 in Params set			*/
	
								USART6->CR1					=	USART_CR1_RE			|										/* Reciever enable												*/
																			USART_CR1_TE			|										/* Transmitter enable											*/
																			USART_CR1_IDLEIE	|										/* IDLE Interrupt Enable									*/
																			USART_CR1_TCIE		|										/* Transmission complete interrupt enable	*/
																			ParitySelect[(Params & 0x06) >> 1] |	/* Parity select													*/
																			USART_CR1_UE;													/* USART Enable														*/

								NVIC_SetPriority(USART6_IRQn, USART6_Prty);
								NVIC_EnableIRQ(USART6_IRQn);																/* USART6	Interrupr enable								*/
#endif								
							} break;
							
							
	} //switch (Channel)
} //void InitUsart(int Channel, int Speed, int Parity, int StopBit, int Master, UsartProc_Type Proc)


void USART1_IRQHandler() {
int Status;
int Temp;	
int TX_RX_Count = 0;	
	
	Status = USART1->SR;
	Temp   = USART1->DR;

	if (Status & USART_SR_TC)	{																		/* Transmission Complete								*/
		PeriphBB(USART1->SR,  USART_SR_TC_bit) = 0;									/* Clear TC bit													*/
		PeriphBB(USART1->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(USART1->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		return;
	}
	
	PeriphBB(USART1->CR1, USART_CR1_RE_bit) = 0; 									/* Reciever disable											*/
	PeriphBB(USART1->CR3, USART_CR3_DMAR_bit) = 0; 								/* DMA Disable Receiver									*/
	
	TX_RX_Count = (USART_Buff_length - DMA2_Stream5->NDTR);
	
	/* Re-init recieve DMA channel ----------------------------------------------------------------------	*/
	PeriphBB(DMA2_Stream5->CR, DMA_SxCR_EN_bit) = 0;							/* Disable DMA channel									*/
  while (PeriphBB(DMA2_Stream5->CR, DMA_SxCR_EN_bit));					/* Wait for DMA channel off							*/
	
	DMA2->HIFCR				 	= (0x3Dul << 6);													/* Clear DMA interrupr status bits			*/
	DMA2_Stream5->M0AR 	= (unsigned int)USART1_RX_Buff;						/* Addr of recieve buffer								*/
	DMA2_Stream5->NDTR 	= USART_Buff_length;											/* Buffer length												*/
													
	PeriphBB(DMA2_Stream5->CR, DMA_SxCR_EN_bit) = 1;							/* Enable DMA Channel 									*/

	/* Check recieved data ------------------------------------------------------------------------------	*/
	TX_RX_Count = USART1_Proc(TX_RX_Count, USART1_RX_Buff, USART1_TX_Buff, Status, 1);

	/* Re-init transmit DMA channel ---------------------------------------------------------------------	*/
	if (TX_RX_Count > 0) {
		PeriphBB(DMA2_Stream7->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel									*/
		while (PeriphBB(DMA2_Stream7->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off							*/
	
		DMA2->HIFCR				 	= (0x3Dul << 22);												/* Clear DMA interrupr status bits			*/
		DMA2_Stream7->M0AR 	= (unsigned int)USART1_TX_Buff;					/* Addr of recieve buffer								*/
		DMA2_Stream7->NDTR 	= TX_RX_Count;													/* Number of bytes to transfer					*/
													
		PeriphBB(DMA2_Stream7->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel : 								*/	
		}	else 
		{
		PeriphBB(USART1->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(USART1->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		}	
}

void USART2_IRQHandler() {
int Status;
int Temp;	
int TX_RX_Count = 0;	
	
	Status = USART2->SR;
	Temp   = USART2->DR;

	if (Status & USART_SR_TC)	{																		/* Transmission Complete								*/
		PeriphBB(USART2->SR,  USART_SR_TC_bit) = 0;									/* Clear TC bit													*/
		PeriphBB(USART2->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(USART2->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		return;
	}
	
	PeriphBB(USART2->CR1, USART_CR1_RE_bit) = 0; 									/* Reciever disable											*/
	PeriphBB(USART2->CR3, USART_CR3_DMAR_bit) = 0; 								/* DMA Disable Receiver									*/
	
	TX_RX_Count = (USART_Buff_length - DMA1_Stream5->NDTR);
	
	/* Re-init recieve DMA channel ----------------------------------------------------------------------	*/
	PeriphBB(DMA1_Stream5->CR, DMA_SxCR_EN_bit) = 0;							/* Disable DMA channel									*/
  while (PeriphBB(DMA1_Stream5->CR, DMA_SxCR_EN_bit));					/* Wait for DMA channel off							*/
	
	DMA1->HIFCR				 	= (0x3Dul << 6);													/* Clear DMA interrupr status bits			*/
	DMA1_Stream5->M0AR 	= (unsigned int)USART2_RX_Buff;						/* Addr of recieve buffer								*/
	DMA1_Stream5->NDTR 	= USART_Buff_length;											/* Buffer length												*/
													
	PeriphBB(DMA1_Stream5->CR, DMA_SxCR_EN_bit) = 1;							/* Enable DMA Channel 									*/

	/* Check recieved data ------------------------------------------------------------------------------	*/
	TX_RX_Count = USART2_Proc(TX_RX_Count, USART2_RX_Buff, USART2_TX_Buff, Status, 2);

	/* Re-init transmit DMA channel ---------------------------------------------------------------------	*/
	if (TX_RX_Count > 0) {
		PeriphBB(DMA1_Stream6->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel									*/
		while (PeriphBB(DMA1_Stream6->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off							*/
	
		DMA1->HIFCR				 	= (0x3Dul << 16);												/* Clear DMA interrupr status bits			*/
		DMA1_Stream6->M0AR 	= (unsigned int)USART2_TX_Buff;					/* Addr of recieve buffer								*/
		DMA1_Stream6->NDTR 	= TX_RX_Count;													/* Number of bytes to transfer					*/
													
		PeriphBB(DMA1_Stream6->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel : 								*/	
		}	else 
		{
		PeriphBB(USART2->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(USART2->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		}	
}


void USART3_IRQHandler() {
int Status;
int Temp;	
int USART3_TX_RX_Count = 0;	
	
	Status = USART3->SR;
	Temp   = USART3->DR;

	if (Status & USART_SR_TC)	{																		/* Transmission Complete								*/
		PeriphBB(USART3->SR,  USART_SR_TC_bit) = 0;									/* Clear TC bit													*/
		PeriphBB(USART3->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(USART3->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		return;
	}
	
	PeriphBB(USART3->CR1, USART_CR1_RE_bit) = 0; 									/* Reciever disable											*/
	PeriphBB(USART3->CR3, USART_CR3_DMAR_bit) = 0; 								/* DMA Disable Receiver									*/
	
	USART3_TX_RX_Count = (USART_Buff_length - DMA1_Stream1->NDTR);
	
	/* Re-init recieve DMA channel ---------------------------------------------------------------------------------------------------- */
	PeriphBB(DMA1_Stream1->CR, DMA_SxCR_EN_bit) = 0;							/* Disable DMA channel: DMA1_Stream1->CR &= ~DMA_SxCR_EN;							*/
  while (PeriphBB(DMA1_Stream1->CR, DMA_SxCR_EN_bit));					/* Wait for DMA channel off: while (DMA1_Stream1->CR & DMA_SxCR_EN);	*/
	
	DMA1->LIFCR				 	= (0x3Dul << 6);													/* Clear DMA interrupr status bits			*/
	DMA1_Stream1->M0AR 	= (unsigned int)USART3_RX_Buff;						/* Addr of recieve buffer								*/
	DMA1_Stream1->NDTR 	= USART_Buff_length;											/* Buffer length												*/
													
	PeriphBB(DMA1_Stream1->CR, DMA_SxCR_EN_bit) = 1;							/* Enable DMA Channel : DMA1_Stream1->CR	|= DMA_SxCR_EN;							*/

	/* Check recieved data ------------------------------------------------------------------------------------------------------------ */
	USART3_TX_RX_Count = USART3_Proc(USART3_TX_RX_Count, USART3_RX_Buff, USART3_TX_Buff, Status, 3);

	/* Re-init transmit DMA channel --------------------------------------------------------------------------------------------------- */
	if (USART3_TX_RX_Count > 0) {
		PeriphBB(DMA1_Stream3->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel: DMA1_Stream3->CR &= ~DMA_SxCR_EN;							*/
		while (PeriphBB(DMA1_Stream3->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off: while (DMA3_Stream1->CR & DMA_SxCR_EN);	*/
	
		DMA1->LIFCR				 	= (0x3Dul << 22);												/* Clear DMA interrupr status bits			*/
		DMA1_Stream3->M0AR 	= (unsigned int)USART3_TX_Buff;					/* Addr of recieve buffer								*/
		DMA1_Stream3->NDTR 	= USART3_TX_RX_Count;										/* Number of bytes to transfer					*/
													
		PeriphBB(DMA1_Stream3->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel : DMA1_Stream3->CR	|= DMA_SxCR_EN;							*/	
		}	else 
		{
		PeriphBB(USART3->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(USART3->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		}	
}

void UART4_IRQHandler()  {
int Status;
int Temp;	
int TX_RX_Count = 0;	
	
	Status = UART4->SR;
	Temp   = UART4->DR;

	if (Status & USART_SR_TC)	{																		/* Transmission Complete								*/
		PeriphBB(UART4->SR,  USART_SR_TC_bit) = 0;									/* Clear TC bit													*/
		PeriphBB(UART4->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(UART4->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		return;
	}
	
	PeriphBB(UART4->CR1, USART_CR1_RE_bit) = 0; 									/* Reciever disable											*/
	PeriphBB(UART4->CR3, USART_CR3_DMAR_bit) = 0; 								/* DMA Disable Receiver									*/
	
	TX_RX_Count = (USART_Buff_length - DMA1_Stream2->NDTR);
	
	/* Re-init recieve DMA channel ---------------------------------------------------------------------------------------------------- */
	PeriphBB(DMA1_Stream2->CR, DMA_SxCR_EN_bit) = 0;							/* Disable DMA channel: DMA1_Stream2->CR &= ~DMA_SxCR_EN;							*/
  while (PeriphBB(DMA1_Stream2->CR, DMA_SxCR_EN_bit));					/* Wait for DMA channel off: while (DMA1_Stream2->CR & DMA_SxCR_EN);	*/
	
	DMA1->LIFCR				 	= (0x3Dul << 16);													/* Clear DMA interrupr status bits			*/
	DMA1_Stream2->M0AR 	= (unsigned int)USART4_RX_Buff;						/* Addr of recieve buffer								*/
	DMA1_Stream2->NDTR 	= USART_Buff_length;											/* Buffer length												*/
													
	PeriphBB(DMA1_Stream2->CR, DMA_SxCR_EN_bit) = 1;							/* Enable DMA Channel : DMA1_Stream2->CR	|= DMA_SxCR_EN;							*/

	/* Check recieved data ------------------------------------------------------------------------------------------------------------ */
	TX_RX_Count = USART4_Proc(TX_RX_Count, USART4_RX_Buff, USART4_TX_Buff, Status, 4);

	/* Re-init transmit DMA channel --------------------------------------------------------------------------------------------------- */
	if (TX_RX_Count > 0) {
		PeriphBB(DMA1_Stream4->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel: DMA1_Stream4->CR &= ~DMA_SxCR_EN;							*/
		while (PeriphBB(DMA1_Stream4->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off: while (DMA4_Stream1->CR & DMA_SxCR_EN);	*/
	
		DMA1->HIFCR				 	= (0x3Dul << 0);												/* Clear DMA interrupr status bits			*/
		DMA1_Stream4->M0AR 	= (unsigned int)USART4_TX_Buff;					/* Addr of recieve buffer								*/
		DMA1_Stream4->NDTR 	= TX_RX_Count;													/* Number of bytes to transfer					*/
													
		PeriphBB(DMA1_Stream4->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel : DMA1_Stream4->CR	|= DMA_SxCR_EN;							*/	
		}	else 
		{
		PeriphBB(UART4->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(UART4->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		}	
}

void UART5_IRQHandler()  {
int Status;
int Temp;	
int TX_RX_Count = 0;	
	
	Status = UART5->SR;
	Temp   = UART5->DR;

	if (Status & USART_SR_TC)	{																		/* Transmission Complete								*/
		PeriphBB(UART5->SR,  USART_SR_TC_bit) = 0;									/* Clear TC bit													*/
		PeriphBB(UART5->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(UART5->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		return;
	}
	
	PeriphBB(UART5->CR1, USART_CR1_RE_bit) = 0; 									/* Reciever disable											*/
	PeriphBB(UART5->CR3, USART_CR3_DMAR_bit) = 0; 								/* DMA Disable Receiver									*/
	
	TX_RX_Count = (USART_Buff_length - DMA1_Stream0->NDTR);
	
	/* Re-init recieve DMA channel ---------------------------------------------------------------------------------------------------- */
	PeriphBB(DMA1_Stream0->CR, DMA_SxCR_EN_bit) = 0;							/* Disable DMA channel: DMA1_Stream2->CR &= ~DMA_SxCR_EN;							*/
  while (PeriphBB(DMA1_Stream0->CR, DMA_SxCR_EN_bit));					/* Wait for DMA channel off: while (DMA1_Stream2->CR & DMA_SxCR_EN);	*/
	
	DMA1->LIFCR				 	= (0x3Dul << 0);													/* Clear DMA interrupr status bits			*/
	DMA1_Stream0->M0AR 	= (unsigned int)USART5_RX_Buff;						/* Addr of recieve buffer								*/
	DMA1_Stream0->NDTR 	= USART_Buff_length;											/* Buffer length												*/
													
	PeriphBB(DMA1_Stream0->CR, DMA_SxCR_EN_bit) = 1;							/* Enable DMA Channel : DMA1_Stream2->CR	|= DMA_SxCR_EN;							*/

	/* Check recieved data ------------------------------------------------------------------------------------------------------------ */
	TX_RX_Count = USART5_Proc(TX_RX_Count, USART5_RX_Buff, USART5_TX_Buff, Status, 5);

	/* Re-init transmit DMA channel --------------------------------------------------------------------------------------------------- */
	if (TX_RX_Count > 0) {
		PeriphBB(DMA1_Stream7->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel: DMA1_Stream4->CR &= ~DMA_SxCR_EN;							*/
		while (PeriphBB(DMA1_Stream7->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off: while (DMA4_Stream1->CR & DMA_SxCR_EN);	*/
	
		DMA1->HIFCR				 	= (0x3Dul << 22);												/* Clear DMA interrupr status bits			*/
		DMA1_Stream7->M0AR 	= (unsigned int)USART5_TX_Buff;					/* Addr of recieve buffer								*/
		DMA1_Stream7->NDTR 	= TX_RX_Count;													/* Number of bytes to transfer					*/
													
		PeriphBB(DMA1_Stream7->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel : DMA1_Stream4->CR	|= DMA_SxCR_EN;							*/	
		}	else 
		{
		PeriphBB(UART5->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(UART5->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		}	
}
void USART6_IRQHandler() {
int Status;
int Temp;	
int TX_RX_Count = 0;	
	
	Status = USART6->SR;
	Temp   = USART6->DR;

	if (Status & USART_SR_TC)	{																		/* Transmission Complete								*/
		PeriphBB(USART6->SR,  USART_SR_TC_bit) = 0;									/* Clear TC bit													*/
		PeriphBB(USART6->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(USART6->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		return;
	}
	
	PeriphBB(USART6->CR1, USART_CR1_RE_bit) = 0; 									/* Reciever disable											*/
	PeriphBB(USART6->CR3, USART_CR3_DMAR_bit) = 0; 								/* DMA Disable Receiver									*/
	
	TX_RX_Count = (USART_Buff_length - DMA2_Stream2->NDTR);
	
	/* Re-init recieve DMA channel ---------------------------------------------------------------------------------------------------- */
	PeriphBB(DMA2_Stream2->CR, DMA_SxCR_EN_bit) = 0;							/* Disable DMA channel: DMA1_Stream1->CR &= ~DMA_SxCR_EN;							*/
  while (PeriphBB(DMA2_Stream2->CR, DMA_SxCR_EN_bit));					/* Wait for DMA channel off: while (DMA1_Stream1->CR & DMA_SxCR_EN);	*/
	
	DMA2->LIFCR				 	= (0x3Dul << 16);													/* Clear DMA interrupr status bits			*/
	DMA2_Stream2->M0AR 	= (unsigned int)USART6_RX_Buff;						/* Addr of recieve buffer								*/
	DMA2_Stream2->NDTR 	= USART_Buff_length;											/* Buffer length												*/
													
	PeriphBB(DMA2_Stream2->CR, DMA_SxCR_EN_bit) = 1;							/* Enable DMA Channel : DMA1_Stream1->CR	|= DMA_SxCR_EN;							*/

	/* Check recieved data ------------------------------------------------------------------------------------------------------------ */
	TX_RX_Count = USART6_Proc(TX_RX_Count, USART6_RX_Buff, USART6_TX_Buff, Status, 6);

	/* Re-init transmit DMA channel --------------------------------------------------------------------------------------------------- */
	if (TX_RX_Count > 0) {
		PeriphBB(DMA2_Stream6->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel: DMA1_Stream3->CR &= ~DMA_SxCR_EN;							*/
		while (PeriphBB(DMA2_Stream6->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off: while (DMA3_Stream1->CR & DMA_SxCR_EN);	*/
	
		DMA2->HIFCR				 	= (0x3Dul << 16);												/* Clear DMA interrupr status bits			*/
		DMA2_Stream6->M0AR 	= (unsigned int)USART6_TX_Buff;					/* Addr of recieve buffer								*/
		DMA2_Stream6->NDTR 	= TX_RX_Count;													/* Number of bytes to transfer					*/
													
		PeriphBB(DMA2_Stream6->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel : DMA1_Stream3->CR	|= DMA_SxCR_EN;							*/	
		}	else 
		{
		PeriphBB(USART6->CR3, USART_CR3_DMAR_bit) = 1; 							/* DMA Enable Receiver									*/
		PeriphBB(USART6->CR1, USART_CR1_RE_bit) = 1; 								/* Reciever enable											*/
		}	
}

int  MasterSend(int Port, int TX_Count, int SendMode, unsigned char *TX_Buff) {
	if (TX_Count == 0) return 0;

	switch (Port)	{
#if (USART1_PRESENT == YES)			
		case 1:	{	if ((RCC->APB2ENR & RCC_APB2ENR_USART1EN) == 0) return 0;		/* Port not init												*/
			
							PeriphBB(DMA2_Stream7->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel									*/
							while (PeriphBB(DMA2_Stream7->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off							*/
	
							DMA2->HIFCR				 	= (0x3Dul << 22);												/* Clear DMA interrupr status bits			*/
							DMA2_Stream7->M0AR 	= (unsigned int)TX_Buff;								/* Addr of transmite buffer							*/
							DMA2_Stream7->NDTR 	= TX_Count;															/* Number of bytes to transfer					*/
													
							PeriphBB(DMA2_Stream7->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel										*/
						  return 1;
						} break;
#endif			
#if (USART2_PRESENT == YES)			
		case 2:	{ if ((RCC->APB1ENR & RCC_APB1ENR_USART2EN) == 0) return 0;		/* Port not init												*/
			
							PeriphBB(DMA1_Stream6->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel									*/
							while (PeriphBB(DMA1_Stream6->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off							*/
	
							DMA1->HIFCR				 	= (0x3Dul << 16);												/* Clear DMA interrupr status bits			*/
							DMA1_Stream6->M0AR 	= (unsigned int)TX_Buff;								/* Addr of transmite buffer							*/
							DMA1_Stream6->NDTR 	= TX_Count;															/* Number of bytes to transfer					*/
													
							PeriphBB(DMA1_Stream6->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel										*/
						  return 1;
						} break;
#endif
#if (USART3_PRESENT == YES)			
		case 3:	{ if ((RCC->APB1ENR & RCC_APB1ENR_USART3EN) == 0) return 0;		/* Port not init												*/
			
							PeriphBB(DMA1_Stream3->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel									*/
							while (PeriphBB(DMA1_Stream3->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off							*/
	
							DMA1->LIFCR				 	= (0x3Dul << 22);												/* Clear DMA interrupr status bits			*/
							DMA1_Stream3->M0AR 	= (unsigned int)TX_Buff;								/* Addr of transmite buffer							*/
							DMA1_Stream3->NDTR 	= TX_Count;															/* Number of bytes to transfer					*/
													
							PeriphBB(DMA1_Stream3->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel										*/
						  return 1;
						} break;
#endif
#if (UART4_PRESENT  == YES)			
		case 4:	{ if ((RCC->APB1ENR & RCC_APB1ENR_UART4EN) == 0) return 0;		/* Port not init												*/

							PeriphBB(DMA1_Stream4->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel									*/
							while (PeriphBB(DMA1_Stream4->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off							*/
	
							DMA1->HIFCR				 	= (0x3Dul << 0);												/* Clear DMA interrupr status bits			*/
							DMA1_Stream4->M0AR 	= (unsigned int)TX_Buff;								/* Addr of transmite buffer							*/
							DMA1_Stream4->NDTR 	= TX_Count;															/* Number of bytes to transfer					*/

//							#if (UART4_DE_PRESENT == YES)
//								UART4_DE_Ena();																						/**/
//							#endif
			
							PeriphBB(DMA1_Stream4->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel										*/
						  return 1;
						} break;
#endif
#if (UART5_PRESENT  == YES)			
		case 5:	{ if ((RCC->APB1ENR & RCC_APB1ENR_UART5EN) == 0) return 0;		/* Port not init												*/

							PeriphBB(DMA1_Stream7->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel									*/
							while (PeriphBB(DMA1_Stream7->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off							*/
	
							DMA1->HIFCR				 	= (0x3Dul << 22);												/* Clear DMA interrupr status bits			*/
							DMA1_Stream7->M0AR 	= (unsigned int)TX_Buff;								/* Addr of transmite buffer							*/
							DMA1_Stream7->NDTR 	= TX_Count;															/* Number of bytes to transfer					*/

//							#if (UART5_DE_PRESENT == YES)
//								UART5_DE_Ena();																						/**/
//							#endif
			
							PeriphBB(DMA1_Stream7->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel										*/
						  return 1;
						} break;
#endif						
#if (USART6_PRESENT == YES)
		case 6:	{ if ((RCC->APB2ENR & RCC_APB2ENR_USART6EN) == 0) return 0;		/* Port not init												*/
			
							PeriphBB(DMA2_Stream6->CR, DMA_SxCR_EN_bit) = 0;						/* Disabel DMA channel									*/
							while (PeriphBB(DMA2_Stream6->CR, DMA_SxCR_EN_bit));				/* Wait for DMA channel off							*/
	
							DMA2->HIFCR				 	= (0x3Dul << 16);												/* Clear DMA interrupr status bits			*/
							DMA2_Stream6->M0AR 	= (unsigned int)TX_Buff;								/* Addr of transmite buffer							*/
							DMA2_Stream6->NDTR 	= TX_Count;															/* Number of bytes to transfer					*/
													
							PeriphBB(DMA2_Stream6->CR, DMA_SxCR_EN_bit) = 1;						/* Enable DMA Channel										*/
						  return 1;
						} break;
#endif			
		default: return 0;
	}
}

/********************************************************************************************************************************************/
/********************************************************************************************************************************************/
/********************************************************************************************************************************************/
int Modbus03(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen) {
int i;
int j;
int k;	
unsigned int Data;
unsigned int Addr;	

	if (Count!=8) return ModbusErr(0x03, RxBuff, TxBuff);
	
	//Quantity of Registers 																				61
		 i 	= (RxBuff[4] << 8) | RxBuff[5];	if ((i == 0) || (i > ((USART_Buff_length - 5) >> 1) )) return ModbusErr(0x02, RxBuff, TxBuff);
	Addr	= (RxBuff[2] << 8) | RxBuff[3];	if ((Addr + i) > (DataLen>>1)) return ModbusErr(0x02, RxBuff, TxBuff);						
		
	DataAddr += Addr;																/* Ќачальный адрес считываемых данных */

	((short *)TxBuff)[0] = ((short *)RxBuff)[0];

	TxBuff[2] = (i << 1);														/*  ол-во байт данных */
					j = 3;
					k = 3 + (i << 1);												/**/

	/* ≈сли начинаетс€ с нечетного адреса, то сначала считываем полуслово и таким образом выравниваем адрес на границу слова		*/
	if ((unsigned int)DataAddr & 0x02) {
		Data = (DataAddr++)[0]; 
		TxBuff[j++] = Data>>8;
		TxBuff[j++] = Data;
	}

	/* ƒалее считываем целиком словами 																																													*/
	for ( ; j<k ; )	{
		Data = *((unsigned int *)DataAddr++);					/* —читываем сразу слово = два полуслова		*/
		DataAddr++;		
		((unsigned int*)(&TxBuff[j]))[0] = ((Data & 0xFF00FF00) >> 8) | ((Data & 0x00FF00FF) << 8);
		j += 4;
	} 

	Data = CalcCRC(k, TxBuff);
	TxBuff[k++] = Data;
	TxBuff[k++]	= Data>>8;

	return k;
}

int Modbus06(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen) {
unsigned   int Addr;	
unsigned short Data;
	
	if (Count!=8) return ModbusErr(0x03, RxBuff, TxBuff);
	
	Addr = (RxBuff[2] << 8) | RxBuff[3];	if (Addr > ((DataLen>>1)-1)) return ModbusErr(0x02, RxBuff, TxBuff);
	Data = (RxBuff[4] << 8) | RxBuff[5]; 	

	DataAddr += Addr;
 *DataAddr  = Data;

	((int *)TxBuff)[0] = ((int *)RxBuff)[0];
	((int *)TxBuff)[1] = ((int *)RxBuff)[1];
	return 8;
}

int Modbus08(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen) {
	if (Count!=8) return ModbusErr(0x03, RxBuff, TxBuff);
	
	((int *)TxBuff)[0] = ((int *)RxBuff)[0];
	((int *)TxBuff)[1] = ((int *)RxBuff)[1];
	return 8;	
}	

int Modbus16(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen) {
				 int j;
				 int i;
unsigned int Addr;	
	
	if (Count<11) return ModbusErr(0x03, RxBuff, TxBuff);
	
	   i = (RxBuff[4] << 8) | (RxBuff[5] << 0);		if (i == 0) return ModbusErr(0x02, RxBuff, TxBuff);
	Addr = (RxBuff[2] << 8) | (RxBuff[3] << 0);		if ((Addr + i) > (DataLen>>1)) return ModbusErr(0x02, RxBuff, TxBuff);
	

/* ¬ременно */ 
	if ((Addr == 0x0259) && (i == 3)) {
		StdPrms.SetTime = RxBuff[8]  | (RxBuff[10] << 8) | (RxBuff[12] << 16);

		((int *)TxBuff)[0] = ((int *)RxBuff)[0];
		((int *)TxBuff)[1] = ((int *)RxBuff)[1];
		
		*((short *)(&TxBuff[6])) = CalcCRC(6, TxBuff);
		return 8;
	}

	if ((Addr == 0x025D) && (i == 3)) {
		StdPrms.SetDate = RxBuff[8]  | (RxBuff[10] << 8) | (RxBuff[12] << 16);

		((int *)TxBuff)[0] = ((int *)RxBuff)[0];
		((int *)TxBuff)[1] = ((int *)RxBuff)[1];
		
		*((short *)(&TxBuff[6])) = CalcCRC(6, TxBuff);
		return 8;
	}

	if ((Addr == 0x0252) && (i == 1)) {

		((int *)TxBuff)[0] = ((int *)RxBuff)[0];
		((int *)TxBuff)[1] = ((int *)RxBuff)[1];
		
		*((short *)(&TxBuff[6])) = CalcCRC(6, TxBuff);
		return 8;
	}
	
/* */	

 	
	DataAddr += Addr;												/* Ќачальный адрес дл€ записи данных 	*/
				 j	= 7;													/* Ќачало данных в приемном буфере		*/

	/* ≈сли начинаетс€ с нечетного адреса, то сначала записываем полуслово и таким образом выравниваем адрес на границу слова		*/
	if ((unsigned int)DataAddr & 0x02) {
	  *DataAddr++ = (RxBuff[j+0] << 8) | (RxBuff[j+1] << 0);
		j += 2;
		i -= 1;
		}

	for ( ; i>=2 ; )	{
		*((unsigned int *)DataAddr++) = ((RxBuff[j+0] << 8) | (RxBuff[j+1] << 0)) | ((RxBuff[j+2] << 24) | (RxBuff[j+3] << 16));
		DataAddr++;
		j += 4;
		i -= 2;
		}	
		
	if (i == 1) {
	  *DataAddr++ = (RxBuff[j+0] << 8) | (RxBuff[j+1] << 0);
		j += 2;
		i -= 1;
		}
	
	((int *)TxBuff)[0] = ((int *)RxBuff)[0];
	((int *)TxBuff)[1] = ((int *)RxBuff)[1];
		
	*((short *)(&TxBuff[6])) = CalcCRC(6, TxBuff);
	return 8;
}

void SetUartParams(int Channel, int Params) {
	switch (Channel) {
#if (USART1_PRESENT == YES)
		case 1:	{ USART1->BRR	 =	APB2CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
							USART1->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
																																							/* Parity select													*/
							USART1->CR1  = (USART1->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;		
#endif
#if (USART2_PRESENT == YES)
		case 2:	{ USART2->BRR	 =	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
							USART2->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
																																							/* Parity select													*/
							USART2->CR1  = (USART2->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;
#endif

		
		
		
#if (USART3_PRESENT == YES)
		case 3:	{ USART3->BRR	 =	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
							USART3->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
																																							/* Parity select													*/
							USART3->CR1  = (USART3->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;
#endif

#if (UART4_PRESENT  == YES)
  	case 4:	{ UART4->BRR	 =	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
							UART4->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
																																							/* Parity select													*/
							UART4->CR1  = (UART4->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;
#endif

#if (UART5_PRESENT  == YES)
		case 5:	{ UART5->BRR	 =	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
							UART5->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
																																							/* Parity select													*/
							UART5->CR1  = (UART5->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;
#endif

#if (USART6_PRESENT == YES)
		case 6:	{ USART6->BRR	 =	APB2CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
							USART6->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
																																							/* Parity select													*/
							USART6->CR1  = (USART6->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;		
#endif
	}
} //void SetUartParams(int Channel, int Params)

void SetUartSpeed(int Channel, int Params)  {
	switch (Channel) {
#if (USART1_PRESENT == YES)
		case 1:	{ USART1->BRR	 =	APB2CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
						} break;		
#endif
#if (USART2_PRESENT == YES)
		case 2:	{ USART2->BRR	 =	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
						} break;
#endif						
#if (USART3_PRESENT == YES)
		case 3:	{ USART3->BRR	 =	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
						} break;
#endif
#if (UART4_PRESENT  == YES)
		case 4:	{ UART4->BRR	 =	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
						} break;
#endif
#if (UART5_PRESENT  == YES)
		case 5:	{ UART5->BRR	 =	APB1CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
						} break;
#endif
#if (USART6_PRESENT == YES)
		case 6:	{ USART6->BRR	 =	APB2CLK / SpeedSelect[(Params & 0x700) >> 8];		/* Set Baudrate														*/
						} break;		
#endif
	}
} //void SetUartSpeed(int Channel, int Params)

void SetUartParity(int Channel, int Params) {
	switch (Channel) {
#if (USART1_PRESENT == YES)
		case 1:	{ USART1->CR1 = (USART1->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;	
#endif
#if (USART2_PRESENT == YES)
		case 2:	{ USART2->CR1 = (USART2->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;
#endif
#if (USART3_PRESENT == YES)
		case 3:	{ USART3->CR1 = (USART3->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;
#endif
#if (UART4_PRESENT  == YES)
		case 4:	{ UART4->CR1  = (UART4->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;
#endif
#if (UART5_PRESENT  == YES)
		case 5:	{ UART5->CR1  = (UART5->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;
#endif
#if (USART6_PRESENT == YES)
		case 6:	{ USART6->CR1 = (USART6->CR1 & ~(USART_CR1_M|USART_CR1_PCE|USART_CR1_PS)) | ParitySelect[(Params & 0x06) >> 1];
						} break;		
#endif
	}
} //void SetUartParity(int Channel, int Params)

void SetUartStopBits(int Channel, int Params) {
	switch (Channel) {
#if (USART1_PRESENT == YES)
		case 1:	{ USART1->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
						} break;
#endif
#if (USART2_PRESENT == YES)
		case 2:	{ USART2->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
						} break;
#endif
#if (USART3_PRESENT == YES)
		case 3:	{ USART3->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
						} break;
#endif
#if (UART4_PRESENT  == YES)
		case 4:	{ UART4->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
						} break;
#endif
#if (UART5_PRESENT  == YES)
		case 5:	{ UART5->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
						} break;
#endif
#if (USART6_PRESENT == YES)
		case 6:	{ USART6->CR2	 = (Params & 0x01) << 13;														/* 2 Stop bits if Bit 0 in Params set			*/
						} break;		
#endif
	}
} //void SetUartStopbits(int Channel, int Params)
 	

 int GetSavedUartParams(int Port) 						{return SavePrms.UartParams[(Port-1) &0x07];	}
void PutSavedUartParams(int Port, int Params) {SavePrms.UartParams[(Port-1) &0x07] = Params;}


	
	
	
	
