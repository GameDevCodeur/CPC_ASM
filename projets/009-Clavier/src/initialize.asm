; *******************************
; *      Tuto Amstrad CPC       *
; *******************************
; * AUTEUR ...... MAES Patrick  *
; * YOUTUBE...... GAMEDEVCODEUR *
; *******************************
	
	FW_SETMODE $00					; 160x200 pixels (4 bpp, 2 pixels par octet)
	FW_SETPALETTE PALETTE, 3 		; Charge 4 couleurs de la palette
	FW_SETBORDER FW_SKY_BLUE		; Bordure de la fenetre en couleur Bleu
	