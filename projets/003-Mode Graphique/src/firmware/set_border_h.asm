; *************************************************
; * Graphique                                     *
; *************************************************
; * -- set_border                                 *
; *************************************************
; * Equivalent Basic : BORDER a,b                 *
; * PARAMETRES D'ENTREE : B = C1 , C = C2         * 
; * PARAMETRES DE SORTIE : Rien                   *
; * REGISTRES MODIFIES : AF , BC , DE , HL        *
; * ETAT DES FLAGS EN SORTIE : Variable           *
; * ADR ROM - CPC 464 : $CF1H                     *
; *         - CPC 664 : $CF3H                     *
; *         - CPC6128 : $CF7H                     *
; *************************************************
; * change couleur border                         *
; *************************************************

; * https://cpcrulez.fr/coding-system-les_routines_system__SOSP.htm

SET_BORDER = $BC38