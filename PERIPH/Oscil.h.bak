#define SampleRate	  16000 					          //Частота выборки (без делителя) 
#define SizeMemory    (1048576/2)               //Вся доступная память под осциллограммы в байтах

typedef struct  {
	uint16_t  OscilTypeData[32];					//64		//Идентификатор формата данных в каналах
	uint16_t  OscilAddr[32];							//64   	//Смещение от начала структуры для снимаемого параметра (адрес параметра)
	uint32_t  OscilSize; 								  //4			//Размер под одну осциллограмму (байт)
	 int16_t  OscilQuantity;							//2			//Колличество формируемых осциллограмм: 1...32
	 int16_t  OscilChNum;								  //2			//Колличество каналов: 1...32
	uint16_t  OscilHistoryPercent; 				//2			//Предыстория: 0...100%
	uint16_t  OscilFreqDiv;							  //2			//Делитель частоты опроса осциллографа
	uint16_t  OscilEnable;								//2			//Включен или выключен осциллограф и нужно ли выполнять запись в память 
  
	uint8_t		OscilChNumName[32][32]; 		//1024	//Название каналов
	uint8_t 	OscilComtradeConfig[1392];	//1392 
  
  uint16_t  OscilSizePercent;           //2     //Укорачивание осциллограммы от теоретически возможной
  
} OscilConfig_type;

typedef struct {								  //768 байт 
	uint32_t  OscilHistoryCount; 		//Колличество кадров на предысторию 
	uint16_t  OscilSampleRate; 			//Счетчик того, как часто пишем осциллограмму 
	uint16_t  OscilSampleSize;			//Размер под одну выборку 
	uint16_t  OscilNeed;						//Флаг внешнего запуска 
	uint16_t  OscilLoad;						//Флаг загрузки 
	uint32_t  OscilLoadTemp;				//Номер откуда грузить осциллограммы 	
	
	uint16_t  OscilStatus[32];			//Статусы осциллограмм
	uint16_t  OscilLoadData[32];		//
	uint32_t  OscilEnd[32];			    //Указывает на конец осциллограмм				
	uint32_t  OscilDateTime[64];		//Штампы времени осциллограмм	
	uint32_t  OscilReasons[32];     //Причины передачи
	uint16_t  OscilNewConfig[48];	  //Новая конфигурация	
	
	uint32_t  OscilMemorySize;      //Вся доступная память под осциллограммы в байтах
	uint16_t  OscilStatusLoad;
  uint16_t  Padding[1];           //Чтобы размерность была 768 байт = 0x0180 слов 16 bit
  uint32_t  OscilLenght;          //Кол-во записей в осциллограмме
  uint32_t  OscilRemainingCount;  //Кол-во записей после предыстории
} OscilCmnd_type;


void OscilWriteMemory(void);
extern void Oscil(void);
extern void InitOscil(OscilConfig_type *SavedOscilConfig, OscilCmnd_type *OscilCmnd, uint16_t *DataBlock, uint16_t *Memory);


