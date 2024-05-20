; *****************************
; *     Tuto Amstrad CPC      *
; *****************************
; * ASM ......... VASM 1.9f   *
; * CPU ......... Z80         *
; * Date ........ 20/05/2024  *
; *****************************
	.org $170												; programme à $170.
	
; *****************************
; *        PROGRAMME          *
; *****************************		
	ld HL, STR_HELLO_WORLD					; HL adresse de la chaine.
	call PRINT											; afficher la chaine.	
LOOP_MAIN:
	jr LOOP_MAIN										; boucle infinie.

; *****************************
; *        FONCTIONS          *
; *****************************
	include "print_h.asm"

; *****************************
; *           DATA            *
; *****************************
	include "data_h.asm"


	