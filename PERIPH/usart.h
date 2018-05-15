#define USART_Buff_length		128

typedef enum USARTPrms {
   OneStopBit		=	0ul,
   TwoStopBits	=	1ul,
	
   NoParity			= (2ul << 1),
   EvenParity		=	(1ul << 1),
   OddParity		=	(0ul << 1),

   Baud9600			=	(0ul << 8),
   Baud19200		=	(1ul << 8),
   Baud38400		=	(2ul << 8),
   Baud57600		=	(3ul << 8),
   Baud115200		=	(4ul << 8),
   Baud230400		=	(5ul << 8),
	 Baud460080		= (6ul << 8),
	 Baud5250000  = (7ul << 8)
} USARTPrms_type;

typedef enum MasterSendMode {
   SendAlways		=	0ul,
   SendFree			=	1ul

} MasterSendMode_type;

struct UsartPrms_struct {
	unsigned char Parity_Stop;
	unsigned char BaudRate;
	unsigned char Addr1;
	unsigned char Addr2;	
};

union UsartPrms_union	{
					 unsigned int AllParams;
struct UsartPrms_struct	Params;	
};


#define USART_CR1_RE_bit		2
#define USART_CR1_TE_bit		3
#define USART_SR_TC_bit			6
#define DMA_SxCR_EN_bit			0
#define USART_CR3_DMAR_bit 	6

#define USART_ParityError				USART_SR_PE
#define USART_OverrunError			(USART_SR_ORE|USART_SR_RXNE)
#define USART_RecieveError			(USART_SR_PE|USART_SR_ORE|USART_SR_RXNE)

typedef int(*UsartProc_Type)(int, unsigned char*, unsigned char*, int, int);

extern unsigned short CalcCRC(int Count, unsigned char *Buff);
extern  int ModbusErr(int ErrCode, unsigned char *RxBuff, unsigned char *TxBuff);

extern void InitUsart(int Channel, int Params, UsartProc_Type Proc);
extern void SetUartParams(int Channel, int Params);
extern void SetUartParity(int Channel, int Params);
extern void SetUartStopBits(int Channel, int Params);

extern  int MasterSend(int Port, int TX_Count, int SendMode, unsigned char *TX_Buff);

extern  int Modbus03(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);
extern  int Modbus06(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);
extern  int Modbus08(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);
extern  int Modbus16(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);
extern  int Modbus23(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);

extern  int GetSavedUartParams(int Port);
extern void PutSavedUartParams(int Port, int Params);


