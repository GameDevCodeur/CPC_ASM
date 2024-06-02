	
	.macro FIR_SETBORDER_BLINK ;color1, color2
		LD B,	\1																		; B = color 1
		LD C,	\2																		; C = color 2
		CALL SCR_SET_BORDER
	.endm
	
	.macro FIR_SETBORDER ;color
		LD B,	\1																		; B = color
		LD C,	B																			; C = B = color
		CALL SCR_SET_BORDER
	.endm
	
	.macro GAT_SETBORDER ;color
    LD   A, GAT_BORDER                       		; (2)
    LD   BC, GATE_ARRAY + GAT_INK + \1 ;color		; (3)
    OUT  (C), A                          				; (4)
    OUT  (C), C                          				; (4) Color
	.endm
	