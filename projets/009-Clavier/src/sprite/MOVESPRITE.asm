	
_MOVERIGHT:
	CP 	KB_RIGHT				; Fleche Droite
	RET	NZ
	LD 	A, (_X)
	PUSH AF
	SUB SPRITERIGHTSIDE			; Soustraction, registre destination est toujours A.
	RET NC
	POP AF
	;LD 	A, (_X)
	INC A
	LD (_X), A
	RET

_MOVELEFT:
	CP 	KB_LEFT					; Fleche Gauche
	RET	NZ
	LD 	A, (_X)
	OR 	A						; Comparer A à zéro, ne modifie pas le registre
	RET Z
	DEC A
	LD 	(_X), A
	RET

_MOVEDOWN:
	CP 	KB_DOWN					; Fleche Bas
	RET	NZ
	RET

_MOVEUP:
	CP	KB_UP					; Fleche Haut
	RET	NZ
	RET
