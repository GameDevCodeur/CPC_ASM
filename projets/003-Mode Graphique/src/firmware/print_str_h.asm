; *************************************************
; * TEXT                                          *
; *************************************************
; * -- PRINT (HL <= Adr String)                   *
; *************************************************
; * afficher une chaîne de caractères à l'écran   *
; * Dernier octet de la chaine doit être un $00   *
; * Dependence write_char                         *
; *************************************************

PRINT:
	ld A,(HL)					; charger la valeur stockée à l'adresse HL dans A.
	or A							;	OR sur registre A si aucun bit à 1.
	ret Z							; retourner à l'appelant si zéro (Z flag = 1).
	inc HL						; incrémente le registre spécifié en opérande de 1.
	call WRITE_CHAR		; effectuer un saut absolu 16 bits (vecteur WRITE_CHAR).
	jr PRINT					; saut inconditionnel sans retour.

