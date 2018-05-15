#include "stm32f4xx.h"
#include "global.h"

short FiltDigIn(unsigned int NewCurrDigIn, unsigned short *PrevDigIn, unsigned char *Counters, unsigned char RefDigIn) {
unsigned short SameDigIn;
unsigned  char TempCount;
unsigned 	 int NewMask = 0;	
					 int i;

	SameDigIn	= ~((NewCurrDigIn >> 16) ^ *PrevDigIn);											/* ����� ������ �� ���������� ���������	*/
	
	for (i=15; i>=0; i--) {
		TempCount = Counters[i];
		if (SameDigIn & (1ul << i)) {TempCount = __UQADD8(TempCount,1);} else {TempCount = 0;}
		Counters[i] = TempCount;
		if (TempCount == RefDigIn)  { NewMask |= (1ul << i);}
	}

	NewCurrDigIn &= ~NewMask;																						/* ���������� ���������� ��� 	*/
	NewCurrDigIn |= ((NewCurrDigIn >> 16) & NewMask);										/* ������������� ���					*/
		
	*PrevDigIn = (NewCurrDigIn >> 16);
	return NewCurrDigIn;
}


void SetZeroChs(unsigned int *SetZeroCmnd) {
static unsigned int ChsToZero = 0;
static unsigned int CurrCh = 0;
static int FiltCount = 0;
static int Buffer = 0;
			 int Value;
			 int i;

	if (FiltCount) {
			if (CurrCh > 15) {Value = AP_REG(StdPrms.IntADCData[CurrCh - 16] << 3, 656, &Buffer);}
				else 	{Value = AP_REG(StdPrms.ExtADCData[CurrCh], 656, &Buffer);}  
			if (--FiltCount == 0)	{
				SavePrms.ADCOffs[CurrCh] = Value;
				if (ChsToZero) {
					FiltCount = 1000; 
					Buffer = 0;
					/* ���� ��������� ����� ��� ��������� 0			*/
					i = CurrCh + 1;
					while ((ChsToZero & (1ul << i)) == 0) {i++;}
					/* ���������� � ����� ������� �����					*/
					ChsToZero &= ~(1ul << i);
					CurrCh = i; 					
				}
			}
	} else if (*SetZeroCmnd & 0x00FFFFFF) {
			/* ������ � ������� ���������� ���������� ����	*/
			ChsToZero = *SetZeroCmnd & 0x00FFFFFF;																		
			*SetZeroCmnd = 0; 
			/* ���� ������ ����� ��� ��������� 0	*/
			i = 0;	while ((ChsToZero & (1ul << i)) == 0) {i++;}
			/* ���������� � ����� ������� �����		*/
			ChsToZero &= ~(1ul << i);
			CurrCh = i; 
			FiltCount = 1000;
		}
}

int AP_REG32(int x, int Ti, long long *Buffer) {
	*Buffer += (long long)__QSUB(x, *Buffer >> 32) * Ti;
	return *Buffer >> 32;
}











