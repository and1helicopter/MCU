#include "stm32f4xx.h"
#include "global.h"

static int SPI_Tresh = 0;
static int SaveParamCount = 0;
static unsigned int LoadBuffer[SaveParamsMaxLength+2];

void InitFram(void) {
	
	if (FramSPI == SPI4) {																								
		if (RCC->APB2ENR & RCC_APB2ENR_SPI4EN) return;											/* Уже инициализировано	*/
		RCC->APB2ENR |= RCC_APB2ENR_SPI4EN;																	/* Clock enable fo SPI 4*/
	} else return;
	
	FramCS = 1;
	FramSPI->CR1 = 	SPI_CR1_SPE |				/*SPI Enable								*/
									SPI_CR1_SSM | 			/*Software slave management	*/
									SPI_CR1_SSI | 			/*Internal slave select			*/	
									SPI_CR1_MSTR| 			/*Master selection					*/
									(1ul << 3);					/*Clock / 4 = 21MHz					*/
	
	/* SPI4_Tx & Rx	DMA Configuration	---------------------------------------------------------------	*/
	RCC->AHB1ENR |= RCC_AHB1ENR_DMA2EN | RCC_AHB1ENR_CRCEN;			/* DMA2 & CRC Clock enable						*/
	DMA2->LIFCR				 	= (0x3Dul << 6) | (0x3Dul << 0);				/* Clear DMA interrupr status bits		*/
	/* SPI4_Tx DMA	*/
	DMA2_Stream1->PAR 	= (unsigned int)&(FramSPI->DR);
	DMA2_Stream1->CR	 	= (4ul << 25) 	|												/* Channel #4													*/
												(1ul<< 6)			|												/* Data transfer direction M-to-P			*/
												DMA_SxCR_MINC	|												/* Memory increment mode							*/
//											DMA_SxCR_TCIE	|												/* Transmit complete interrupe				*/
//											DMA_SxCR_EN		|												/* Channel enable											*/
												DMA_SxCR_PL_VeryHI;										/* Priority level - very high					*/
	/* SPI4_Rx DMA	*/
	DMA2_Stream0->PAR 	= (unsigned int)&(FramSPI->DR);
	DMA2_Stream0->CR	 	= (4ul << 25) 	|												/* Channel #4													*/
												(0ul<< 6)			|												/* Data transfer direction P-to-M			*/
												DMA_SxCR_MINC	|												/* Memory increment mode							*/
//											DMA_SxCR_TCIE	|												/* Transmit complete interrupe				*/
//											DMA_SxCR_EN		|												/* Channel enable											*/
												DMA_SxCR_PL_VeryHI;										/* Priority level - very high					*/
	
	NVIC_SetPriority(DMA2_Stream1_IRQn, DMA2_Stream1_Prty);
	NVIC_EnableIRQ(DMA2_Stream1_IRQn);

	NVIC_SetPriority(DMA2_Stream0_IRQn, DMA2_Stream0_Prty);
	NVIC_EnableIRQ(DMA2_Stream0_IRQn);

}

int FramWrite(unsigned int *IntAddr, unsigned int ExtAddr, unsigned short Count) {
int Temp;
	
	if (Count  == 0) return 1;
	if (FramCS == 0) return 0;

	/* Отключаем передачу DMA, включаем передачу 8 bit	*/
	FramSPI->CR1 &= ~SPI_CR1_DFF;
	FramSPI->CR2	=	0;
	
	/* Fram chip select в низкий уровень и отправляем WREN opcode -------------------	*/
	FramCS = 0;
	FramSPI->DR = 0x06;														/* WREN opcode -------------------- */						
	while (!(FramSPI->SR & SPI_SR_TXE));					/* Ждем начала передачи байта				*/
	while (FramSPI->SR & SPI_SR_BSY);							/* Ожидаем окончания передачи байта	*/
	FramCS = 1;

	Temp = FramSPI->DR;														/* Считываем принятый байт					*/
	__nop();
	
	/* Fram chip select в низкий уровень и отправляем WRITE opcode ------------------	*/
	FramCS = 0;
	FramSPI->DR = 0x02;														/* WRITE opcode ------------------- */						
	
	/* SPI4_Tx DMA Configuration	------------------------------------------------------------------- */
	DMA2_Stream1->M0AR 	= (unsigned int)IntAddr;
	DMA2_Stream1->NDTR 	= Count >> 1;														/* Записывать будем по 16 слов				*/
	DMA2_Stream1->CR	 	= (4ul << 25) 			|										/* Channel #4													*/
												(1ul<< 6)					|										/* Data transfer direction M-to-P			*/
												DMA_SxCR_MSIZE_16	|
												DMA_SxCR_PSIZE_16	|
												DMA_SxCR_MINC			|										/* Memory increment mode							*/
//											DMA_SxCR_TCIE			|										/* Transmit complete interrupt enable	*/
//											DMA_SxCR_EN				|										/* Channel enable											*/
												DMA_SxCR_PL_VeryHI;										/* Priority level - very high					*/
												
	/* SPI4_Rx DMA Configuration	------------------------------------------------------------------- */
	DMA2_Stream0->M0AR 	= (unsigned int)&SPI_Tresh;
	DMA2_Stream0->NDTR 	= (Count >> 1) + 1;											/* Записывать будем по 16 bit					*/
	DMA2_Stream0->CR	 	= (4ul << 25) 			|										/* Channel #4													*/
												(0ul<< 6)					|										/* Data transfer direction P-to-M			*/
												DMA_SxCR_MSIZE_16	|
												DMA_SxCR_PSIZE_16	|
//											DMA_SxCR_MINC			|										/* Memory increment mode							*/
												DMA_SxCR_TCIE			|										/* Transmit complete interrupt enable	*/
//											DMA_SxCR_EN				|										/* Channel enable											*/
												DMA_SxCR_PL_VeryHI;										/* Priority level - very high					*/												

	while (FramSPI->SR & SPI_SR_BSY);														/* Ожидаем окончания передачи байта		*/

	Temp	= FramSPI->DR;
	
	DMA2->LIFCR		= (0x3Dul << 0) | (0x3Dul << 6);							/* Clear DMA interrupr status bits		*/
	FramSPI->CR1 |= SPI_CR1_DFF;

	FramSPI->CR2	= SPI_CR2_RXDMAEN;
	PeriphBB(DMA2_Stream0->CR, DMA_SxCR_EN_bit) = 1;

	FramSPI->DR		= ExtAddr;

	FramSPI->CR2	= SPI_CR2_RXDMAEN | SPI_CR2_TXDMAEN;
	PeriphBB(DMA2_Stream1->CR, DMA_SxCR_EN_bit) = 1;
	
	return 1;
}	

int FramRead(unsigned int *IntAddr, unsigned short ExtAddr, unsigned short Count) {
int Temp;
	if (Count  == 0) return 1;
	if (FramCS == 0) return 0;

	/* Отключаем передачу DMA, включаем передачу 8 bit	*/
	FramSPI->CR1 &= ~SPI_CR1_DFF;
	FramSPI->CR2	=	0;
	
	/* Fram chip select в низкий уровень и отправляем READ opcode -------------------	*/
	FramCS = 0;
	FramSPI->DR = 0x03;														/* READ opcode -------------------- */						
	
	/* SPI4_Tx DMA Configuration	------------------------------------------------------------------- */
	DMA2_Stream1->M0AR 	= (unsigned int)&SPI_Tresh;							
	DMA2_Stream1->NDTR 	= Count >> 1;														/* Записывать будем по 16 слов				*/
	DMA2_Stream1->CR	 	= (4ul << 25) 			|										/* Channel #4													*/
												(1ul<< 6)					|										/* Data transfer direction M-to-P			*/
												DMA_SxCR_MSIZE_16	|
												DMA_SxCR_PSIZE_16	|
//											DMA_SxCR_MINC			|										/* Memory increment mode							*/
//											DMA_SxCR_TCIE			|										/* Transmit complete interrupt enable	*/
//											DMA_SxCR_EN				|										/* Channel enable											*/
												DMA_SxCR_PL_VeryHI;										/* Priority level - very high					*/
												
	/* SPI4_Rx DMA Configuration	------------------------------------------------------------------- */
	DMA2_Stream0->M0AR 	= (unsigned int)IntAddr;
	DMA2_Stream0->NDTR 	= (Count >> 1);													/* Записывать будем по 16 bit					*/
	DMA2_Stream0->CR	 	= (4ul << 25) 			|										/* Channel #4													*/
												(0ul<< 6)					|										/* Data transfer direction P-to-M			*/
												DMA_SxCR_MSIZE_16	|
												DMA_SxCR_PSIZE_16	|
												DMA_SxCR_MINC			|										/* Memory increment mode							*/
												DMA_SxCR_TCIE			|										/* Transmit complete interrupt enable	*/
//											DMA_SxCR_EN				|										/* Channel enable											*/
												DMA_SxCR_PL_VeryHI;										/* Priority level - very high					*/												

	while (FramSPI->SR & SPI_SR_BSY);														/* Ожидаем окончания передачи байта		*/	
	Temp	= FramSPI->DR;																				/* Считываем принятые байты						*/

	FramSPI->CR1 |= SPI_CR1_DFF;																/* Включаем 16 bit										*/
	FramSPI->DR		= ExtAddr;																		/* Отправляем адрес										*/
	while (!(FramSPI->SR & SPI_SR_TXE));												/* Ждем начала передачи байта					*/
	while (!(FramSPI->SR & SPI_SR_RXNE));												/* Ждем принятого байта								*/
	Temp	= FramSPI->DR;																				/* Считываем принятые байты						*/

	DMA2->LIFCR		= (0x3Dul << 0) | (0x3Dul << 6);							/* Clear DMA interrupr status bits		*/
	PeriphBB(DMA2_Stream0->CR, DMA_SxCR_EN_bit) = 1;
	PeriphBB(DMA2_Stream1->CR, DMA_SxCR_EN_bit) = 1;	
	FramSPI->CR2	= SPI_CR2_RXDMAEN | SPI_CR2_TXDMAEN;
	
	return 1;
}	

void DMA2_Stream0_IRQHandler() { DMA2->LIFCR	= (0x3Dul << 0);	FramCS	=	1;}
void DMA2_Stream1_IRQHandler() { DMA2->LIFCR	= (0x3Dul << 6);}


void SaveParamsProc() {
unsigned int *DataPtr;
				 int TempRecSize;	
				 int i;

	if ((EvPrms.EventCode & 0x53) == 0x53)	{
		if (FramWrite((unsigned int *)&EvPrms, StdPrms.CurrentEvent * EventRecordMaxSize * 4, EvRecSize)) {
			EvPrms.EventCode &= ~0xFFul; 
			if (++StdPrms.CurrentEvent >= NumberOfEventRecords) {StdPrms.CurrentEvent = 0;}
			StdPrms.FlagSaveEvent = StdPrms.CurrentEvent | 0x8000;	
		} else return;
	} else

	if (StdPrms.FlagSaveEvent & 0x8000) {
		if (FramWrite((unsigned int *)&StdPrms.CurrentEvent, FramEventNumAddr, 4)) { StdPrms.FlagSaveEvent &= ~0x8000; } else return;
	} else
	
	if (SaveParamCount)	{
		if (SaveParamCount*32*4 >= (ParRecSize - 32*4)) {
			LoadBuffer[0] = CRC->DR;
			if (FramWrite(LoadBuffer, FramCRCAddr, 32*4 + 4)) { SaveParamCount = 0;	} else return;
		} 
		else
		/* Если осталось >= 32 слова, то разбиваем на несколько циклов								*/
		{
			DataPtr 		= (unsigned int *)&SavePrms + 32*SaveParamCount + 32;
			TempRecSize = MIN(32*4, ParRecSize - 32*4 - 32*4*SaveParamCount);
			for (i = 33; i <= ((TempRecSize >> 2) + 32); i++) { LoadBuffer[i] = CRC->DR = *DataPtr++; }
			if (FramWrite(LoadBuffer+32+1, FramParamAddr + 32*4 + 32*4*SaveParamCount, TempRecSize)) { SaveParamCount++; } else return;			
		}		
	} else
	
	if (StdPrms.SaveParam) {
		CRC->CR	=	0x01;																/*	Сбрасываем регистр CRC --------	*/
		/* Если размер записи <= 32 слов, то записываем единым потоком										*/
		if (ParRecSize <= 32*4)	{
			DataPtr = (unsigned int *)&SavePrms;
			for (i = 1; i <= (ParRecSize >> 2); i++) { LoadBuffer[i] = CRC->DR = *DataPtr++; }
			LoadBuffer[0] = CRC->DR;
			if (FramWrite(LoadBuffer, FramCRCAddr, ParRecSize + 4)) { StdPrms.SaveParam = 0; } else return;
		} 
		else
		/* Если размер записи >= 32 слова, то разбиваем на несколько циклов								*/
		{
			DataPtr 		= (unsigned int *)&SavePrms;
			TempRecSize = MIN(32*4, ParRecSize - 32*4);
			for (i = 1; i <= ((TempRecSize >> 2) + 32) ; i++) { LoadBuffer[i] = CRC->DR = *DataPtr++; }
			if (FramWrite(LoadBuffer+32+1, FramParamAddr + 32*4, TempRecSize)) {
				SaveParamCount 		= 1;
				StdPrms.SaveParam = 0;
			} else return;			
		}	
	} else
	
	if ((StdPrms.LoadEvent > 0) && (StdPrms.LoadEvent <= NumberOfEventRecords)) {
		i = StdPrms.CurrentEvent - StdPrms.LoadEvent;
		if (i < 0) i += NumberOfEventRecords;
		if (FramRead((unsigned int *)&EvPrms_l, i * EventRecordMaxSize * 4, EvRecSize)) { StdPrms.LoadEvent = 0; } else return;			
	}
}

int LoadParamsProc() {
int i;
unsigned int *DataPtr = (unsigned int *)&SavePrms;	
	
	if (FramRead(LoadBuffer, FramEventNumAddr, ParRecSize + 8)) {
		while (FramCS == 0);																													/* ожидаем окончания загрузки				*/

		i = LoadBuffer[0];
		if ((i & 0xFFFF) != ((i & 0x7FFF0000) >> 16)) i = 0;
		StdPrms.CurrentEvent = i;
		
		CRC->CR	=	0x01;																																/*	Сбрасываем регистр CRC --------	*/
		for (i = 2; i < ((ParRecSize >> 2) + 2); i++) { CRC->DR = LoadBuffer[i]; }
		if (CRC->DR != LoadBuffer[1]) return 2;
		for (i = 2; i < ((ParRecSize >> 2) + 2); i++) *DataPtr++ = LoadBuffer[i];

		return 0;
	} else return 1;
}


