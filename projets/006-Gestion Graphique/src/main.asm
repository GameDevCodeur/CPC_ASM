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
	; include "macro/m_setink.asm"
	; include "macro/m_setpen.asm"
	include "macro/m_setpalette.asm"

; *****************************
; *        PROGRAMME          *
; *****************************

	.org $170															; programme à $170
																				; ecran 640x400 pixels
	FW_SETMODE $00												; 160x200 - 4 bpp, 2 pixels par octet
	FW_SETPALETTE PALETTE, $03						; set palette			
	FW_SETBORDER FW_BLUE									; set border color	
	
	LD HL, $C04F													; H->C0 :(y=C0)
																				; L->4F :0..4F(79) (x=4F) 
	; point droite 0246 ->0010 FW_BRIGHT_WHITE
	; point gauche 1537 ->0000 FW_BLACK
	LD (HL), %00010000										; afficher pixel en x, y
	
	;LD HL, $C84F														; H->C8 :(y=C8)
	CALL _BC26															; L->4F :0..4F(79) (x=4F) 
	;CALL _BC26															; L->4F :0..4F(79) (x=4F) 
	;CALL _BC26															; L->4F :0..4F(79) (x=4F) 
	;CALL _BC26															; L->4F :0..4F(79) (x=4F) 
	;CALL _BC26															; L->4F :0..4F(79) (x=4F) 
	;CALL _BC26															; L->4F :0..4F(79) (x=4F) 
	;CALL _BC26															; L->4F :0..4F(79) (x=4F) 
	
	;CALL _BC26															; L->4F :0..4F(79) (x=4F)
	
	; point droite 0246 ->0000 FW_BLACK
	; point gauche 1537 ->0011 FW_RED
	LD (HL), %10001000										; afficher pixel en x, y
	
LOOP_MAIN:
	JR LOOP_MAIN													; boucle infinie

; *****************************
; *        FONCTIONS          *
; *****************************
_BC26: ; augmenter une adresse écran d'une ligne.
																				; Entrée : HL contient adresse actuelle.
																				; Sortie : HL contient nouvelle adresse.
	LD  DE, $0800
	ADD HL, DE 														; première add tion
	RET NC 																; pas de Carry : le travail est fini
	LD  DE, $C050
	ADD HL, DE														; seconde addition
	RET

; *****************************
; *           DATA            *
; *****************************

PALETTE:
	.byte FW_BLACK, FW_BLUE, FW_BRIGHT_WHITE, FW_RED
