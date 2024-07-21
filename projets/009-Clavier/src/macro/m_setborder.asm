	; *******************************
	; *  Amstrad CPC - 20/07/2024   *
	; *******************************
	; * AUTEUR ...... MAES Patrick  *
	; * YOUTUBE...... GAMEDEVCODEUR *
	; *******************************
	; ** Set couleur de la bordure **
	; *******************************
	.macro FW_SETBORDER_BLINK 				; Color1, Color2
		LD B,	\1							; B = color 1
		LD C,	\2							; C = color 2
		CALL SCR_SET_BORDER
	.endm
	
	.macro FW_SETBORDER 					; Color
		LD B,	\1							; B = color
		LD C,	B							; C = B = color
		CALL SCR_SET_BORDER
	.endm
	
	.macro GAT_SETBORDER 					; Color
		LD   A, GAT_BORDER                 	; (2)
		LD   BC, GATE_ARRAY + GAT_INK + \1 	; (3)
		OUT  (C), A                        	; (4)
		OUT  (C), C                        	; (4)
	.endm
	
	