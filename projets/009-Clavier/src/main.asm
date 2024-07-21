
	; *******************************
	; *  Amstrad CPC - 20/07/2024   *
	; *******************************
	; * AUTEUR ...... MAES Patrick  *
	; * YOUTUBE...... GAMEDEVCODEUR *
	; *******************************

	include "define_cpc.asm"
	include "macros_cpc.asm"

	; ***************
	; ** PROGRAMME **
	; ***************
	.org $170

	; ********************
	; ** INITIALISATION	**
	; ********************
	include "initialize.asm"
	
	; ********************
	; ** MAIN FONCTION	**
	; ********************
	MAIN:
		MEMSET VRAM, $3FCF, $03
	
		LOOP_MAIN:
			CALL GETKEY
			CALL UPDATESPRITE
			CALL DRAWSPRITES
			JR LOOP_MAIN

		EXIT:
			RST $00

	; ***************
	; ** FONCTIONS **
	; ***************
	include "input.asm"
	include "sprites.asm"

	; **********
	; ** DATA **
	; **********
	include "data/data.asm"
	