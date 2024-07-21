
; *******************************
; *        Amstrad CPC          *
; *******************************
; * AUTEUR ...... MAES Patrick  *
; * YOUTUBE...... GAMEDEVCODEUR *
; *******************************
UPDATESPRITE:	
	LD HL,(_XY)					; Position XY du Sprite
	LD (_OXY), HL				; Position XY Precedent du Sprite	

	CALL _MOVERIGHT
	CALL _MOVELEFT
	
	RET
