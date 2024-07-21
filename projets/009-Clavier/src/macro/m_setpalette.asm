
	; *******************************
	; *  Amstrad CPC - 20/07/2024   *
	; *******************************
	; * AUTEUR ...... MAES Patrick  *
	; * YOUTUBE...... GAMEDEVCODEUR *
	; *******************************
	; ** Set Couleur de la Palette **
	; *******************************
	.macro FW_SETPALETTE 	; adrPalette, nbColors
		LD HL, \1
		XOR A				; A index 0
	_lp:	
		PUSH HL
		PUSH AF
		LD B, (HL)			; B color 1
		LD C, B				; C color 2 = color 1
		CALL SCR_SET_INK
		POP AF
		POP HL
		INC A
		INC HL
		CP \2+1				; nombre colors
		JR NZ, _lp
	.endm