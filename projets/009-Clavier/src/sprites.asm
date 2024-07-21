
; *******************************
; *        Amstrad CPC          *
; *******************************
; * AUTEUR ...... MAES Patrick  *
; * YOUTUBE...... GAMEDEVCODEUR *
; *******************************
SPRITEHEIGHT 	  = 4							; Hauteur sprite en lignes
SPRITEWIDTHPIXELS = 2							; Largeur sprite en pixels
SPRITEWIDTHBYTES  = SPRITEWIDTHPIXELS / 2		; Largeur sprite en octets
SPRITERIGHTSIDE   = (40*2) - SPRITEWIDTHBYTES 	; 

; ***************
; ** FONCTIONS **
; ***************
	include "sprite/BC26.asm"
	include "sprite/PUTSPRITE.asm"
	include "sprite/UPDATESPRITE.asm"
	include "sprite/MOVESPRITE.asm"
	include "sprite/DRAWSPRITES.asm"

; ***************
; ** VARIABLES **
; ***************
_XY:
	_X:	.byte $00
	_Y: .byte $C0
	
_OXY:
	_OX: .byte $00
	_OY: .byte $00
