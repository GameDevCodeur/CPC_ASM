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
	
;	LD A, 0
;	LD HL, $C000													; H->C0 :(y=C0)
	
;LINE:
;	LD B, $50
		
;LPIXEL:	
	; point droite 0246 ->0010 FW_BRIGHT_WHITE
	; point gauche 1537 ->0010 FW_BRIGHT_WHITE
;	LD (HL), %00011000									; afficher pixel en x, y
;	INC HL
;	DJNZ LPIXEL													;  décr. B et saute si B est diff. de zéro
;	INC A
;	LD B,A
;	LD HL, $C000
	
;NLINE:	
;	CALL _BC26
;	DJNZ NLINE
	
;	CP A, $19*$8
;	JR NZ, LINE
	
	CALL _CLS
	
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
	
_CLS:
	LD HL, $C000 
	LD (HL), %00011000										; FW_BRIGHT_WHITE les 2 Pixels
	LD DE, $C000+1 
	LD BC, $3FCF													; $FFFF-$3FCF = $C030. $30 = 48 octets
	LDIR																	; copie BC octets depuis HL vers DE 
	RET	
	
; *****************************
; *           DATA            *
; *****************************

PALETTE:
	.byte FW_BLACK, FW_BLUE, FW_BRIGHT_WHITE, FW_RED
