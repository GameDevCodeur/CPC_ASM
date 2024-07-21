; *************************************************
; * TEXT                                          *
; *************************************************
; * -- WRITE_CHAR                                 *
; *************************************************
; * Equivalent Basic 					: PRINT             *
; * PARAMETRES D'ENTREE 			: A=Caractère       *
; * PARAMETRES DE SORTIE 			: Rien              *
; * REGISTRES MODIFIES 				: AF                *
; * ETAT DES FLAGS EN SORTIE 	: Variable          *
; * ADR EN ROM - CPC 464 			: $1400             *
; *            - CPC 664 			: $13FA             *
; *            - CPC 6128			: $13FE             *
; *************************************************
; * SORTIE ECRAN EN MODE TEXTE D’UN CARACTÈRE     *
; * OU CODE DE CONTRÔLE (CODES ENTRES 0 & 1F)     *
; *************************************************

TXT_OUTPUT = $BB5A
