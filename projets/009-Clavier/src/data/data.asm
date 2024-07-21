
; *******************************
; *    Données Amstrad CPC      *
; *******************************
; * AUTEUR ...... MAES Patrick  *
; * YOUTUBE...... GAMEDEVCODEUR *
; *******************************

SPRITE_00:
	DB %00000011	; line 0 
	DB $03			; line 1 
	DB %00000011	; line 2 
	DB $03			; line 3 

SPRITE_01:
	DB %01001100	; line 0 - FW_PASTEL_YELLOW	- FW_PASTEL_GREEN
	DB $4C			; line 1 - FW_PASTEL_YELLOW	- FW_PASTEL_GREEN
	DB %10001100	; line 2 - FW_PASTEL_GREEN	- FW_PASTEL_YELLOW
	DB $8C			; line 3 - FW_PASTEL_GREEN	- FW_PASTEL_YELLOW

	;  C0	 C1		 Codage		C0					C1				  OCT
	; 0000  0000 -> 00000000 FW_BLACK 			- FW_BLACK			- $00
	; 0000  0010 -> 00000100 FW_BLACK 			- FW_PASTEL_YELLOW 	- $04
	; 0010  0000 -> 00001000 FW_PASTEL_YELLOW 	- FW_BLACK			- $08
	; 0000  0011 -> 01000100 FW_BLACK 			- FW_PASTEL_GREEN 	- $44
	; 0010  0011 -> 01001100 FW_PASTEL_YELLOW	- FW_PASTEL_GREEN	- $4C
	; 0011  0000 -> 10001000 FW_PASTEL_GREEN 	- FW_BLACK			- $88
	; 0011  0010 -> 10001100 FW_PASTEL_GREEN	- FW_PASTEL_YELLOW	- $8C
	; 0011  0011 -> 11001100 FW_PASTEL_GREEN	- FW_PASTEL_GREEN	- $CC

	;				8	 4	2	 1
	; 		 B3 B2 B1 B0
	; C0	 0  0  1  1 FW_PASTEL_GREEN
	; C1	 0  0  1  1 FW_PASTEL_GREEN
		
	; Bits		  7		6	  5	    4	  3	    2	  1	    0
	; Codage	C0-B0 C1-B0 C0-B2 C1-B2 C0-B1 C1-B1 C0-B3 C1-B3
	; Resultat    1     1     0     0     1     1     0     0

PALETTE:
	DB FW_BLACK, FW_BLUE, FW_PASTEL_YELLOW, FW_PASTEL_GREEN