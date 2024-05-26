; *****************************
; *     Tuto Amstrad CPC      *
; *****************************
; * ASM ......... VASM 1.9f   *
; * CPU ......... Z80         *
; * Date ........ 25/05/2024  *
; *****************************

; *****************************
; *         MACROS            *
; *****************************

	.macro SETMODE, VAL
		if \VAL == $00
			xor a
		else
			ld a, \VAL
		endif
		call SET_MODE
	.endm
	
; *****************************
; *        PROGRAMME          *
; *****************************

	.org $170												; programme à $170.

	SETMODE $00											; set mode $00
		
	ld BC, $0000										; B = $00, C = $00
	call SET_BORDER                 ; bord noir
	
	ld DE, $00											; DE = 00 coord X
	ld HL, $00											; HL = 00 coord Y
	call PLOT_ABSOLUTE							; afficher pixel en X,Y
	
	ld HL, STR_HELLO_WORLD					; HL adresse de la chaine.
	call PRINT											; afficher la chaine.

LOOP_MAIN:
	jr LOOP_MAIN										; boucle infinie.

; *****************************
; *        FONCTIONS          *
; *****************************
	include "firmware/write_char_h.asm"
	include "firmware/print_str_h.asm"
	include "firmware/set_mode_h.asm"
	include "firmware/set_border_h.asm"
	include "firmware/plot_absolute_h.asm"

; *****************************
; *           DATA            *
; *****************************
	include "data_h.asm"
