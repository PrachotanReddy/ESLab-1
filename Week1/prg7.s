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
	LDR R4,=1
	MOV R6,#10
	MOV R7,#5
UP1 STR R4,[R0]
	ADD R4,#1
	ADD R0,#4
	SUBS R6,#1
	BNE UP1
	ADD R1,#(Size-1)*4
UP2	LDR R2,[R0],#-4
	STR R2,[R1],#-4
	SUBS R6,#1
	BNE UP2
STOP
	B STOP
Size equ 10
Ol equ 2
	AREA mydata, DATA, READWRITE
SRC DCD 0
	END