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
	LDR R0, =SRC
	MOV R6, #10
	LDR R4, =1
lp
	STR R4, [R0]
	ADD R4, #1
	ADD R0, #4
	SUBS R6, #1
	BNE lp
STOP
	B STOP
	AREA mydata, DATA, READWRITE
SRC DCD 0,1
	END