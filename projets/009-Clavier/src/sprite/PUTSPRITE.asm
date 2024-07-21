
_PUTSPRITE:	
	LD	 B, SPRITEHEIGHT			; Y (Nb lignes)
	
_PUTSPRITE_:						; Affiche SPRITE_1xB octets.	
	PUSH BC							; Entrée : HL = adresse Sprite, DE = adresse VRAM.
	PUSH DE  						; Entrée : B = Nb octets sur Y
	LD 	 BC, SPRITEWIDTHBYTES		; Octets à copier sur X
	LDIR							; LD (DE),(HL) DE++ HL++ BC fois
	POP  DE
	
	PUSH HL
	EX	 DE, HL
	CALL _BC26						; Ligne du dessous !
	EX 	 DE, HL
	POP  HL
		
	POP  BC
	DJNZ _PUTSPRITE_
	RET
	