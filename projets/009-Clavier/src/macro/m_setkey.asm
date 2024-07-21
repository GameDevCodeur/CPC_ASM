	
	; *******************************
	; *  Amstrad CPC - 20/07/2024   *
	; *******************************
	; * AUTEUR ...... MAES Patrick  *
	; * YOUTUBE...... GAMEDEVCODEUR *
	; *******************************	
	; ** SET Touche dans KEYVAR    **
	; *******************************
	.macro FW_SETKEYBOARD ; KEYVAR
		LD  B, 0
	_INKEY_1:
		CALL KM_READ_KEY
		JR 	 NC, _INKEY_2
		LD 	 (\1), A	
	_INKEY_2:
		DJNZ _INKEY_1
	.endm
