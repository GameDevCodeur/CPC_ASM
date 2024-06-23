; *********************************************
; *       Adresse des Lignes Vram             *
; *********************************************
; * Fichier ..... : data_adresse_video.asm    *
; *********************************************
; * Cible ....... : Amstrad CPC               *
; * ASM ......... : VASM                      *
; * Langage ..... : Z80                       *
; *********************************************

; ============================================================
; *     Adresse de depart des lignes de la Vram (Par defaut) *
; ============================================================
VRAM_ADR_LIGNE:

  .word $C000,$C800,$D000,$D800,$E000,$E800,$F000,$F800
  .word $C050,$C850,$D050,$D850,$E050,$E850,$F050,$F850
  .word $C0A0,$C8A0,$D0A0,$D8A0,$E0A0,$E8A0,$F0A0,$F8A0
  .word $C0F0,$C8F0,$D0F0,$D8F0,$E0F0,$E8F0,$F0F0,$F8F0
  .word $C140,$C940,$D140,$D940,$E140,$E940,$F140,$F940
  .word $C190,$C990,$D190,$D990,$E190,$E990,$F190,$F990
  .word $C1E0,$C9E0,$D1E0,$D9E0,$E1E0,$E9E0,$F1E0,$F9E0
  .word $C230,$CA30,$D230,$DA30,$E230,$EA30,$F230,$FA30
  .word $C280,$CA80,$D280,$DA80,$E280,$EA80,$F280,$FA80
  .word $C2D0,$CAD0,$D2D0,$DAD0,$E2D0,$EAD0,$F2D0,$FAD0
  .word $C320,$CB20,$D320,$DB20,$E320,$EB20,$F320,$FB20
  .word $C370,$CB70,$D370,$DB70,$E370,$EB70,$F370,$FB70
  .word $C3C0,$CBC0,$D3C0,$DBC0,$E3C0,$EBC0,$F3C0,$FBC0
  .word $C410,$CC10,$D410,$DC10,$E410,$EC10,$F410,$FC10
  .word $C460,$CC60,$D460,$DC60,$E460,$EC60,$F460,$FC60
  .word $C4B0,$CCB0,$D4B0,$DCB0,$E4B0,$ECB0,$F4B0,$FCB0
  .word $C500,$CD00,$D500,$DD00,$E500,$ED00,$F500,$FD00
  .word $C550,$CD50,$D550,$DD50,$E550,$ED50,$F550,$FD50
  .word $C5A0,$CDA0,$D5A0,$DDA0,$E5A0,$EDA0,$F5A0,$FDA0
  .word $C5F0,$CDF0,$D5F0,$DDF0,$E5F0,$EDF0,$F5F0,$FDF0
  .word $C640,$CE40,$D640,$DE40,$E640,$EE40,$F640,$FE40
  .word $C690,$CE90,$D690,$DE90,$E690,$EE90,$F690,$FE90
  .word $C6E0,$CEE0,$D6E0,$DEE0,$E6E0,$EEE0,$F6E0,$FEE0
  .word $C730,$CF30,$D730,$DF30,$E730,$EF30,$F730,$FF30
  .word $C780,$CF80,$D780,$DF80,$E780,$EF80,$F780,$FF80