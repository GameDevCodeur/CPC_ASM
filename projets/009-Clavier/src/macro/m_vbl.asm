
	.macro WAIT_VBL
vbl:	LD B, #F5 ; PPI_B
			IN A, (C)
			RRA
			JR NC, vbl
	.endm