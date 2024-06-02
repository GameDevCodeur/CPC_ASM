; *****************************
; *     Tuto Amstrad CPC      *
; *****************************
; * ASM ......... VASM 1.9f   *
; * CPU ......... Z80         *
; * Date ........ 02/06/2024  *
; *****************************

	include "define_cpc.inc"

; *****************************
; *         MACROS            *
; *****************************

	include "macro/m_setmode.asm"
	include "macro/m_setborder.asm"
	include "macro/m_setink.asm"

; *****************************
; *        PROGRAMME          *
; *****************************

	.org $170															; programme à $170
	
	FIR_SETMODE %00000000									; set mode 160×200 pixels 16 couleurs	
	FIR_SETPEN #0, FIR_BLACK							; set pen Black
	FIR_SETBORDER FIR_BLUE								; set border color

	LD DE, $027F													; DE coord écran X = #639
	LD HL, $018F													; HL coord écran Y = #399
	CALL GRA_PLOT_ABSOLUTE								; afficher pixel en X,Y
	
LOOP_MAIN:
	JR LOOP_MAIN													; boucle infinie

; *****************************
; *        FONCTIONS          *
; *****************************


; *****************************
; *           DATA            *
; *****************************

