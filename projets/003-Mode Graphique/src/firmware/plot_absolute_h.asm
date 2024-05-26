; *************************************************
; * Graphique                                     *
; *************************************************
; * Equivalent Basic 					: PLOT x,y          *
; * PARAMETRES D'ENTREE 			: DE=x , HL=y       *
; * PARAMETRES DE SORTIE 			: Rien              *
; * REGISTRES MODIFIES 				: AF , BC , DE , HL *
; * ETAT DES FLAGS EN SORTIE 	: Variable          *
; * ADR EN ROM - CPC 464 			: $1813             *
; *            - CPC 664			: $177F             *
; *            - CPC 6128 		: $1783             *
; *************************************************
; * origine 									: bas à gauche      *
; *************************************************
; * Affichage pixel au coordonnee x, y            *
; *************************************************

PLOT_ABSOLUTE = $BBEA
