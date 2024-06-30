	.macro FW_SETGRAPEN
		if \1 == $00
			XOR A
		else
			LD A,\1
		endif
		CALL GRA_SET_PEN
	.endm
	