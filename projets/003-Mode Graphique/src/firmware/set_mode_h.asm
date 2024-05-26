; *************************************************
; * Graphique                                     *
; *************************************************
; * -- set_mode                                   *
; *************************************************
; * Equivalent Basic    			: MODE              *
; * PARAMETRES D'ENTREE 			: A=Mode            * 
; * PARAMETRES DE SORTIE 			: Rien              *
; * REGISTRES MODIFIES 				: AF , BC , DE ,HL  *
; * ETAT DES FLAGS EN SORTIE 	: Variable          *
; * ADRE EN ROM - CPC 464 		: $ACAH             *
; *             - CPC 664  		: $AE5H             *
; *             - CPC 6128 		: $AE9H             *
; *************************************************
; * change le mode graphique                      *
; *************************************************

SET_MODE = $BC0E

; Mode 0 : 160×200 pixels avec 16 couleurs (4 bpp)
; Mode 1 : 320×200 pixels avec 4 couleurs  (2 bpp)
; Mode 2 : 640×200 pixels avec 2 couleurs  (1 bpp)
; Mode 3 : 160×200 pixels avec 4 couleurs  (2 bpp) (mode non officiel)

