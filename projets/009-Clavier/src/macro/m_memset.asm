	; *******************************
	; *  Amstrad CPC - 20/07/2024   *
	; *******************************
	; * AUTEUR ...... MAES Patrick  *
	; * YOUTUBE...... GAMEDEVCODEUR *
	; *******************************
	; ** Set une zone de mémoire   **
	; *******************************
	.macro MEMSET 		; adresse, taille, valeur
		LD HL, \1					
		LD (HL), \3
		LD DE, \1 + 1
		LD BC, \2					
		LDIR			; copie BC octets depuis HL vers DE 
	.endm