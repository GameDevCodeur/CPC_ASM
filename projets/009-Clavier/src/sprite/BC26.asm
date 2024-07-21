
_BC26: 						; Augmenter addresse écran d'une ligne.
							; Entrée : HL contient adresse actuelle.
							; Sortie : HL contient nouvelle adresse.
	LD  DE, $0800
	ADD HL, DE 				; première addition.
	RET NC 					; pas de Carry : le travail est fini
	LD  DE, $C050
	ADD HL, DE				; seconde addition.
	RET
	