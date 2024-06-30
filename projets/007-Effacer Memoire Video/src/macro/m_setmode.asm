	.macro FW_SETMODE
		if \1 == $00
			XOR A
		else
			LD A, \1
		endif
		CALL SCR_SET_MODE
	.endm
	
	.macro GAT_SETMODE
		LD C, GAT_MODE + ROM_OFF
		OUT (C),C
	.endm
	