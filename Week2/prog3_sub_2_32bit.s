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
	LDR R0,=Value1
	LDR R1,[R0]
	LDR R0,=Value2
	LDR R3,[R0]
	SUBS R6,R1,R3
	LDR R2,=Result
	STR R6,[R2]
STOP
	B STOP
Value1 DCD 50
Value2 DCD 20
	AREA mydata, DATA, READWRITE
Result DCD 0
	END