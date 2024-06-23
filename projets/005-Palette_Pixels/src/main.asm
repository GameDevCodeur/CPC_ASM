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
	include "macro/m_setpen.asm"
	include "macro/m_setpalette.asm"

; *****************************
; *        PROGRAMME          *
; *****************************

	.org $170															; programme à $170
	
	FW_SETMODE $00												; 160x200 - 4 bpp, 2 pixels par octet
	FW_SETPALETTE PALETTE, $03						; set palette			
	FW_SETBORDER FW_BLUE									; set border color	
	
	;FW_SETGRAPEN BRIGHT_WHITE						; set stylo graphique #02	
	
	;LD DE, $027F													; DE coord écran X = #639
	;LD HL, $018F													; HL coord écran Y = #399
	;CALL GRA_PLOT_RELATIVE								; afficher pixel en X,Y

	;LD DE, 159														; DE coord écran X = 0..159
	;LD HL, 0															; HL coord écran Y = 0..199
	;CALL FPLOT_M0												; afficher pixel en X,Y
	
	LD D, $C0															; D->C0 :(y=C0)
	LD E, $4F															; E->4F :0..4F(79) (x=4F) 
	; point droite 0246 ->0010 FW_BRIGHT_WHITE
	; point gauche 1537 ->0000 FW_BLACK
	LD A,	%00010000												; A -> color 
	LD (DE), A														; afficher pixel en x, y
	
LOOP_MAIN:
	JR LOOP_MAIN													; boucle infinie

; *****************************
; *        FONCTIONS          *
; *****************************
	; include "fct/fct_fastplot_m0.asm"
	
; *****************************
; *           DATA            *
; *****************************

PALETTE:
	.byte FW_BLACK, FW_BLUE, FW_BRIGHT_WHITE, FW_RED

