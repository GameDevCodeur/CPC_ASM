	.macro FIR_SETPEN ;pen, color
		if \1 == $00
			XOR A																		; A index pen
		else
			LD A, \1																
		endif		
    LD B, \2																	; B color 1
    LD C, B																		; C color 2 = color 1
    CALL SCR_SET_INK
	.endm

	.macro FIR_SETPEN_BLINK ;pen, color1, color2
		if \1 == $00
			XOR A																		; A index pen
		else
			LD A, \1																
		endif		
    LD B, \2																	; B color 1
    LD C, \3																	; C color 2
    CALL SCR_SET_INK
	.endm
	
	.macro GAT_SETPEN ;pen, color
		if \1 == $00
			XOR A
		else
			LD	A,\1																; (2)
		endif		
    LD   BC,GATE_ARRAY + GAT_INK + \2					; (3)
    OUT  (C),A                          			; (4) pen
    OUT  (C),C                          			; (4) color
	.endm                                  			; Total 13 microsegundos
	