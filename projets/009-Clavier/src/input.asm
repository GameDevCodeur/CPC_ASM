
; *******************************
; *    Amstrad CPC - 20/07/24   *
; *******************************
; * AUTEUR ...... MAES Patrick  *
; * YOUTUBE...... GAMEDEVCODEUR *
; *******************************

GETKEY:
	
	FW_SETKEYBOARD KEY
	
	CP KB_ESC
	JP Z, EXIT
	RET

; ***************
; ** VARIABLES **
; ***************
KEY: 
	DB $00
