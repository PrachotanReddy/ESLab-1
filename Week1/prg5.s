	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0X40001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0,=SRC
	LDR R1,=SRC
	ADD R1,#36
	MOV R5,#5
LP	LDR R2,[R0]
	LDR R3,[R1]
	STR R2,[R1],#-4
	STR R3,[R0],#4
	SUBS R5,#1
	BNE LP
STOP
	B STOP
	AREA mydata, DATA, READWRITE
SRC DCD 01,02,03,04,05,06,07,08,09,10
	END