; *****************************
; *     Tuto Amstrad CPC      *
; *****************************
; * ASM ......... VBCC 1.9a   *
; * CPU ......... Z80         *
; * Date ........ 19/05/2024  *
; *****************************
	
; *****************************
; *    DEBUT DU PRAGRAMME     *
; *   ADRESSE LECTEUR DISK    *
; *****************************
	.org $170				; début du programme à l'adresse $170	
	ld HL, TEXT			; charger une adresse immédiate dans le registre.
	call PRINT_TEXT ; effectuer un saut absolu 16 bits.
	
; *****************************
; *      BOUCLE INFINIE       *
; *****************************	
LOOP_MAIN:
	jp LOOP_MAIN	; effectuer un saut absolu d'adressage 16 bits.

; *****************************
; *        FONCTIONS          *
; *****************************
PRINT_TEXT:
	ld A,(HL)			; charger la valeur stockée à l'adresse HL dans A.
	cp $FF				; CP est en interne une soustraction du registre A.
	ret z					; retourner à l'appelant si zéro (Z flag = 1).
	inc HL				; incrémente le registre spécifié en opérande de 1.
	call $BB5A		; effectuer un saut absolu 16 bits (vecteur printChar).
	jr PRINT_TEXT	; saut inconditionnel sans retour.

; *****************************
; *           DATA            *
; *****************************
TEXT:
	.byte "HELLO WORLD !", $FF
