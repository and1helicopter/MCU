#define TDChannels 	 12

extern int TermodatStatus;
extern int TermodatStep;
extern int TermodatBUSY;
extern int TermodatError;
extern int TermodatInit;

extern int TermodatCycle(int Port);
extern int RecieveTermodat(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum);

