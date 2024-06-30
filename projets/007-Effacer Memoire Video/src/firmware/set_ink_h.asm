; *************************************************
; * Graphique                                     *
; *************************************************
; * -- SCR_SET_INK                                 *
; *************************************************
; * Equivalent Basic : INK a,b										*
; * PARAMETRES D'ENTREE : A=STYLO, B=C1, C=C2			* 
; * PARAMETRES DE SORTIE : Rien                   *
; * REGISTRES MODIFIES : AF , BC , DE , HL        *
; * ETAT DES FLAGS EN SORTIE : Variable           *
; * ADR ROM - CPC 464 : $CECH                     *
; *         - CPC 664 : $CEEH                     *
; *         - CPC6128 : $CF2H                     *
; *************************************************
; * Affecte à un stylo donné les deux couleurs		*
; *************************************************

; * https://cpcrulez.fr/coding-system-les_routines_system__SOSP.htm

SCR_SET_INK = $BC32
