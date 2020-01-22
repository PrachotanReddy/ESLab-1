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
	LDR R5, =10
	LDR R0, =SRC
	STR R5, [R0]
	LDR R1, =DST
	LDR R3, [R0]
	STR R3, [R1]
STOP
	B STOP
	AREA mydata, DATA, READWRITE
SRC DCD 0	
DST DCD 0
	END