#include "stm32f4xx.h"
#include "global.h"
#include <math.h>

/* Осциллограф	*/
//Объявление структуры и инициализация конфигурации осциллогрофа 

unsigned short BufferSaveToMemory[256]; 

static uint16_t  *ptrDataBlock;      //Указатель на данные для осциллографирования
static uint16_t  *ptrExtMem;         //Указатель на внешнюю память

__align(4) static OscilConfig_type  WorkOscilConfig;    
__align(4) static OscilConfig_type  NewOscilConfig;     

OscilConfig_type  *ptrSavedOscilConfig;
OscilCmnd_type    *ptrOscilCmnd;


void SavePart( int OscilNum, unsigned int PartNum){
	/*	*/
	int i;
	if(PartNum < 5)	{
		for(i = 0; i < 256; i++ )BufferSaveToMemory[i] = ((unsigned short *)(&WorkOscilConfig))[i + 256*PartNum];
		return;
	}
	if(PartNum == 4)
	{
		BufferSaveToMemory[251] = ptrOscilCmnd->OscilEnd[OscilNum];
		BufferSaveToMemory[252] = ptrOscilCmnd->OscilHistoryCount;
		BufferSaveToMemory[253] = ptrOscilCmnd->OscilDateTime[OscilNum];
		BufferSaveToMemory[254] = ptrOscilCmnd->OscilSampleRate;
		BufferSaveToMemory[255] = ptrOscilCmnd->OscilSampleSize;	
		return;
	}
	if(PartNum > 4)
	{
		for(i = 0; i < 256; i++ )BufferSaveToMemory[i] = ptrExtMem[i + 256*(PartNum - 4) + OscilNum*(WorkOscilConfig.OscilSize >> 1)];
		return;
	}
}

void OscilWriteToMemory(unsigned short NumOscil){
	
	//FILE *file; 
	char *fname = "\test\test.txt";
	unsigned int PartNum = 0;
	int PartAll;
	if (((WorkOscilConfig.OscilSize >> 1)%512) == 0) PartAll = (WorkOscilConfig.OscilSize >> 1)/512 + 5; 
	else PartAll = (WorkOscilConfig.OscilSize >> 1)/512 + 6;
	//if ((file = fopen(fname,"wb")) == NULL){ return;}
 // else{
		for (PartNum = 0; PartNum	< PartAll; PartNum++){
			SavePart(NumOscil, PartNum);
	//		fwrite (&BufferSaveToMemory, sizeof(unsigned short),256, file);
    }
	//}
	//fclose(file);

};



/*
  Поиск наиболее старой осциллограммы. 0 - Нет, или Номер осциллограммы + 1.
*/
int32_t FindOldOscil(void) {
	int32_t OldOscil = 0, i;
	
	//Проверка на занятость осциллограммы 
//  if(){
//    
//  }
	
	if (WorkOscilConfig.OscilQuantity == 1 || WorkOscilConfig.OscilEnable == 3|| WorkOscilConfig.OscilEnable == 4) {return 0; } 
	
	for (i = 1; i < WorkOscilConfig.OscilQuantity; i++) 
  {
		if (ptrOscilCmnd->OscilDateTime[(i*2) + 0] > ptrOscilCmnd->OscilDateTime[(OldOscil*2) + 0]) {continue;} 
		if (ptrOscilCmnd->OscilDateTime[(i*2) + 0] < ptrOscilCmnd->OscilDateTime[(OldOscil*2) + 0]) {OldOscil = i; continue;} 
		
		if (ptrOscilCmnd->OscilDateTime[(i*2) + 1] > ptrOscilCmnd->OscilDateTime[(OldOscil*2) + 1]) {continue;} 
		if (ptrOscilCmnd->OscilDateTime[(i*2) + 1] < ptrOscilCmnd->OscilDateTime[(OldOscil*2) + 1]) {OldOscil = i; continue;} 
		
		//if (ptrOscilCmnd->OscilDateTime[(i*3) + 2] < ptrOscilCmnd->OscilDateTime[(OldOscil*3) + 2]) {OldOscil = i;} 	
	}		

	ptrOscilCmnd->OscilStatus[OldOscil] = 0;
  
	return (OldOscil + 1);
}
/* 
  Запись одной точки в память.
*/
void SaveSample(int32_t OscilNum, int32_t OscilSize, int32_t OscilSampleSize, int32_t OscilCounter) {
int32_t ArrayIndex;
int32_t i;
uint16_t *WorkPtr;  
  
  /* Расчет индекса массива для записи данных                       */
  ArrayIndex = (OscilNum * OscilSize + OscilSampleSize * OscilCounter) >> 1;
  
  /* Проверка, что индекс массива не выходит за допустимые пределы  */
  if (ArrayIndex < 0) return;
  if (ArrayIndex > ((SizeMemory >> 1) - 1)) return;
  if ((ArrayIndex + (OscilSampleSize >> 1)) > (SizeMemory >> 1)) return;
  
  /* Записываем данные в зависимости от размерности                 */
  for (i = 0; i < WorkOscilConfig.OscilChNum; i++)
  {
    /* Адрес осциллографируемых данных */
    WorkPtr = ptrDataBlock + WorkOscilConfig.OscilAddr[i];
    
    /* В зависимости от размерности, пишем 2, 4 или 8 байт          */
    if ((WorkOscilConfig.OscilTypeData[i] & 0x0300) == 0x0300) 
    {
      *((uint64_t *)(&ptrExtMem[ArrayIndex])) = *((uint64_t *)(WorkPtr));     //8 байт
      ArrayIndex += 4;
    }
    else if ((WorkOscilConfig.OscilTypeData[i] & 0x0300) == 0x0200)           
    {
      *((uint32_t *)(&ptrExtMem[ArrayIndex])) = *((uint32_t *)(WorkPtr));     //4 байта
      ArrayIndex += 2;      
    } 
    else if ((WorkOscilConfig.OscilTypeData[i] & 0x0300) == 0x0100)
    {
      ptrExtMem[ArrayIndex++] = *(WorkPtr);                                   //2 байта
    } 
  }
}

int32_t FindActiveOscil(void) {
int32_t i;
int32_t OscilNumFree = 0;
int32_t OscilNumActive = 0;
int32_t TempOscilStatus;

	/* Поиск активных осциллограмм	*/
	for (i = WorkOscilConfig.OscilQuantity; i > 0; i--) 
  {
		TempOscilStatus = ptrOscilCmnd->OscilStatus[i-1]; 
		if (TempOscilStatus == 0) 
    {
      OscilNumFree = i; 
      continue;
    }
		if (TempOscilStatus >= 4) continue;
		OscilNumActive = i;
	}	

	/* Обрабатываем статус активной осциллограммы	*/
	if (OscilNumActive == 0) {OscilNumActive = OscilNumFree;}           /* Нет активных - берем свободную */
	if (OscilNumActive == 0) {OscilNumActive = FindOldOscil();}         /* Нет свободных - ищем старую    */
  if (OscilNumActive == 0) return 0;                                  /* Нет старых - выходим           */
  return OscilNumActive; 
}

void TimeStamp(int32_t OscilNum) {

  /* Метка времени */
  ptrOscilCmnd->OscilDateTime[(OscilNum * 2) + 0] = EvPrms.RTC_Date & 0x00FF1F3F;   /*Убираем день недели из слова даты */
  ptrOscilCmnd->OscilDateTime[(OscilNum * 2) + 1] = EvPrms.RTC_Time;
  //ptrOscilCmnd->OscilDateTime[(OscilNum * 2) + 2] = EvPrms.RTC_SSC;  
  
}

void WriteSample(void) {
static int32_t OscilRecordCounter = 0;      /* Счетчик сделанных записей в осцилограмме     */
static int32_t OscilRemainCounter = 0;      /* Счетчик оставшихся записей после предыстории */
int32_t WorkOscilNum;
 
  WorkOscilNum = FindActiveOscil();
  if (WorkOscilNum-- == 0) return;
      
  switch (ptrOscilCmnd->OscilStatus[WorkOscilNum]) 
  {
    case 0x00:  {
                  OscilRecordCounter = 0;
                  OscilRemainCounter = ptrOscilCmnd->OscilRemainingCount;
                  ptrOscilCmnd->OscilStatus[WorkOscilNum] = 1;
                }
    
    case 0x01:  {
                  if ((OscilRecordCounter + 1) >= ptrOscilCmnd->OscilHistoryCount) {ptrOscilCmnd->OscilStatus[WorkOscilNum] = 2;}
                  if ((OscilRecordCounter + 1) <= ptrOscilCmnd->OscilHistoryCount) break;
                } 
    
    case 0x02:  {
                  if (ptrOscilCmnd->OscilNeed == 0) break;

      if (StdPrms.CycleCounter) break;  //Временно, для проверки осциллографа
      
                  ptrOscilCmnd->OscilNeed--;
                  TimeStamp(WorkOscilNum);
                  ptrOscilCmnd->OscilStatus[WorkOscilNum] = 3;  
                } 
    
    case 0x03:  { 
                  if (OscilRemainCounter) {OscilRemainCounter--;}
                  if (OscilRemainCounter == 0) 
                  {
                    ptrOscilCmnd->OscilEnd[WorkOscilNum] = OscilRecordCounter;   
                    ptrOscilCmnd->OscilStatus[WorkOscilNum] = 4;
                  }
                } break;   
  } //switch     

  
  SaveSample(WorkOscilNum, WorkOscilConfig.OscilSize, ptrOscilCmnd->OscilSampleSize, OscilRecordCounter++);

  if (OscilRecordCounter >= ptrOscilCmnd->OscilLenght) OscilRecordCounter = 0; 
}

/*
  Обрабатываем новую конфигурацию, и если она допустима, то записываем ее в качестве рабочей и в сохраняемую область
*/
int32_t CalcOscilSampleSize(OscilConfig_type * OscilConfig) {
  
int32_t i, OscilSampleSize, Count64 = 0, Count32 = 0, Count16 = 0;
  
  /*Расчет размера памяти под одну выборку */
  for (i = OscilConfig->OscilChNum - 1; i >= 0 ; i--)
  {
    if ((OscilConfig->OscilTypeData[i] & 0x0300) == 0x0100) Count16++;
    if ((OscilConfig->OscilTypeData[i] & 0x0300) == 0x0200) Count32++;
    if ((OscilConfig->OscilTypeData[i] & 0x0300) == 0x0300) Count64++;
  }
  
  OscilSampleSize = 8*Count64 + 4*Count32 + 2*Count16;
  if ((Count64 != 0 || Count32 != 0) && (Count16 % 2 != 0)) OscilSampleSize += 2;   
  
  return OscilSampleSize;
}
/* 
  Проверка конфигурации. 
  Возвращаемое значение 0 - OK, иначе код - ошибки конфигурации 
*/
int32_t CheckOscilConfig(OscilConfig_type * OscilConfig) {
int32_t i;
  
  /* Проверяем конфигурацию                       */
  if ((OscilConfig->OscilQuantity < 1)       || (OscilConfig->OscilQuantity > 32))        {return 1;}
  if ((OscilConfig->OscilChNum < 1)          || (OscilConfig->OscilChNum > 32))           {return 2;}
  if ((OscilConfig->OscilHistoryPercent < 0) || (OscilConfig->OscilHistoryPercent > 100)) {return 3;}
  
  /* Проверяем, что у данных 32 и 64 бита адрес четный (кратный слову), нет данных неизвестного размера  */
  for (i = (OscilConfig->OscilChNum - 1); i >= 0 ; i--)
  {
    if ((OscilConfig->OscilTypeData[i] & 0x0200) && (OscilConfig->OscilAddr[i] & 0x0001)) {return 4;}
    if ((OscilConfig->OscilTypeData[i] & 0x0300) == 0) {return 5;}
  }

  /* Проверяем на размерность данных */
  for (i = (OscilConfig->OscilChNum - 1); i > 0 ; i--)
  {
    if ((OscilConfig->OscilTypeData[i] & 0x0300) > (OscilConfig->OscilTypeData[i - 1] & 0x0300)) {return 6;}
  }

  /* Проверяем, что размер памяти под осциллограмму кратен 32 слов = 64 байта */
  if (OscilConfig->OscilSize & 0x0000003F) {return 7;}
  
  /* Проверяем, что память на все осциллограммы не превышает доступную  */
  if ((OscilConfig->OscilSize * OscilConfig->OscilQuantity) > SizeMemory) {return 8;}
  
  /* Расcчитываем размер памяти под одну запись  */
  ptrOscilCmnd->OscilSampleSize = CalcOscilSampleSize(OscilConfig);
  
  /* Проыверяем, что память под осцциллограмму содержит целое число записей   */
  if (OscilConfig->OscilSize % ptrOscilCmnd->OscilSampleSize) {return 9;}
  
  /* Длина осциллограммы - количество выборок       */
  ptrOscilCmnd->OscilLenght = (OscilConfig->OscilSize / ptrOscilCmnd->OscilSampleSize); 					
  /* Предыстория осциллограммы - количество выборок */
  ptrOscilCmnd->OscilHistoryCount = ptrOscilCmnd->OscilLenght * OscilConfig->OscilHistoryPercent / 100;		
  /* Количество выборок полсе записи предыстории    */
  ptrOscilCmnd->OscilRemainingCount = ptrOscilCmnd->OscilLenght - ptrOscilCmnd->OscilHistoryCount;						 
  
  for (i = 0; i < 32; i++) ptrOscilCmnd->OscilStatus[i] = 0;   
  
  /* Конфигурация в порядке */
  return 0;
}

void CopyOscilCfg(OscilConfig_type *Source, OscilConfig_type *Destination) {
int32_t *s = (int32_t *)Source;
int32_t *d = (int32_t *)Destination;
int32_t i;
  for (i = (sizeof(OscilConfig_type) >> 2) - 1; i >= 0; i--)
  {
    *d++ = *s++;
  }
}

#define OscilCfgBlockSize   32
#define OscilCfgBlockNum    40

static __inline void ReadNewConfigOscil(void) {
static  int16_t OscilCfgLoadCount = 0;
        int32_t i;

	if ((ptrOscilCmnd->OscilNewConfig[0] == 1) && (ptrOscilCmnd->OscilNewConfig[34] == 1)) 
  {	
    
		/* Сбрасываем флаги о том, что пришел блок данных новой конфигурации  */
    ptrOscilCmnd->OscilNewConfig[0] = ptrOscilCmnd->OscilNewConfig[34] = 0;
    
    /* 
      Проверяем, что блок данных пришел в нужном порядке, т.е. номер блока на один больше предыдущего. Первый блок - 0
      Если пришел блок с номером 0, считаем, что это начало конфигурации                                              
    */
    
    if (ptrOscilCmnd->OscilNewConfig[1] == 0) 
		{
			ptrOscilCmnd->OscilStatusLoad = 0x0003; //Статус начала загрузки новой осциллограммы
			OscilCfgLoadCount = 0;
		}

    if (OscilCfgLoadCount == ptrOscilCmnd->OscilNewConfig[1])
    {
      for (i = 0 ; i < OscilCfgBlockSize; i++)
      {	
        ((uint16_t *)(&NewOscilConfig))[OscilCfgBlockSize * OscilCfgLoadCount + i] = ptrOscilCmnd->OscilNewConfig[i + 2]; 
      }	      
      OscilCfgLoadCount++;              //Номер следующего блока = кол-во уже загруженных блоков
    } else return;

    /* 
      Если мы дошли сюда, значит загрузка блоков идет последовательно. 
      Если загрузили 40 блоков, то начинаем проверку на целостность данных
    */
    if (OscilCfgLoadCount == OscilCfgBlockNum) 
    {
      /* Сбрасываем счетчик блоков - больше не нужен  */
      OscilCfgLoadCount = 0;  
      /* Проверяем конфигурацию                       */
      if (CheckOscilConfig(&NewOscilConfig))
      {
        ptrOscilCmnd->OscilStatusLoad = 0x0002;		      //Новая конфигурациия загружена, но не принята
        return;
      }
      ptrOscilCmnd->OscilStatusLoad = 0x0001;		        //Новая конфигурациия загружена и принята
    } else return;

    /* 
      Если мы дошли сюда, значит конфигурация загружена и проверена. 
    */ 

    /* Копируем новую конфигурацию в рабочую и сохраняемую область  */
    CopyOscilCfg(&NewOscilConfig, &WorkOscilConfig);
    CopyOscilCfg(&NewOscilConfig,  ptrSavedOscilConfig);

    ptrOscilCmnd->OscilStatusLoad = 0x0001;		//Новая конфигурациия установлена в качестве рабочей
	}
}

void LoadOscil(void) {
	int32_t i;
	/*Загрузка осциллограммы*/
	if(	ptrOscilCmnd->OscilLoad == 1) 
  {
		for (i = 0; i < 32;  i++) 
    {
			ptrOscilCmnd->OscilLoadData[i] = ptrExtMem[ptrOscilCmnd->OscilLoadTemp + i];
		}
		ptrOscilCmnd->OscilLoad = 0;
	}
}

void WriteOscil(void){
static uint16_t OscilFreqDiv = 0;  
    /*Запись осциллограммы*/
	if (OscilFreqDiv == 0)	
  {	
    OscilFreqDiv = WorkOscilConfig.OscilFreqDiv; 
    
    switch (WorkOscilConfig.OscilEnable)
    {
      case 0x00:	return; 				//Если осциллограмму не нужно писать 
      case 0x01:									//0x01 - Без записи в память, 0x02 - Запись в память, 0x03, 0х04 - Нужно ли стирать осциллограмму 
      case 0x02:
      case 0x03:
      case 0x04:  {
                    WriteSample();
                  } break; 		
    }
	}
	if (OscilFreqDiv) OscilFreqDiv--;
}
/*
  При инициализации осциллографа.


*/
void InitOscil(OscilConfig_type *SavedOscilConfig, OscilCmnd_type *OscilCmnd, uint16_t *DataBlock, uint16_t *Memory) {
  
    ptrSavedOscilConfig = SavedOscilConfig; 	
		ptrOscilCmnd = OscilCmnd;
    ptrDataBlock = DataBlock; 
		ptrExtMem = Memory;
  
    /* */
  
		ptrOscilCmnd->OscilMemorySize = SizeMemory;								//Вся доступная память под осциллограммы в байтах
		ptrOscilCmnd->OscilSampleRate = SampleRate;							  //Частота выборки без делителя   
  
    /* Копируем сохраненную конфигурацию в рабочую */
    CopyOscilCfg(SavedOscilConfig, &WorkOscilConfig);
  
    /* Проверяем рабочую конфигурацию осциллографа  */
    if (CheckOscilConfig(&WorkOscilConfig)) 
    {
      /* Если ошибка в конфигурации, то отключаем осциллограф */
      WorkOscilConfig.OscilEnable = SavedOscilConfig->OscilEnable = 0;
    }
}


void Oscil( void ){
#if (ExtMem_Present == YES)	
	
	ReadNewConfigOscil();
	
	LoadOscil();
    
  WriteOscil();
#endif
}
 
