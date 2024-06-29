; ---------------------------------------------------------------------------
; Gate_Array
; ---------------------------------------------------------------------------
GATE_ARRAY = $7F00

GAT_MODE    = %10000000
GAT_INK     = %01000000
GAT_BORDER  = %00010000

ROM_OFF 	= %00001100

; ---------------------------------------------------------------------------
; GAT_Palette de couleur
; ---------------------------------------------------------------------------
GAT_WHITE = $00
GAT_BLUE  = $04
GAT_CIAN  = $06
GAT_BLACK = $14

; ---------------------------------------------------------------------------
; FirmWare
; ---------------------------------------------------------------------------
TXT_OUTPUT 			= $BB5A
GRA_SET_PEN			= $BBDE 
GRA_PLOT_ABSOLUTE 	= $BBEA
GRA_PLOT_RELATIVE	= $BBED
SCR_SET_MODE		= $BC0E
SCR_SET_INK			= $BC32
SCR_SET_BORDER		= $BC38

; ---------------------------------------------------------------------------
; FW Palette de couleur
; ---------------------------------------------------------------------------
FW_BLACK			= $00
FW_BLUE				= $01
FW_BRIGHT_BLUE		= $02	; Bleu Brillant
FW_RED				= $03
FW_MAGENTA			= $04
FW_MAUVE			= $05
FW_BRIGHT_RED		= $06
FW_PURPLE			= $07
FW_BRIGHT_MAGENTA 	= $08
FW_GREEN 			= $09
FW_CYAN           	= $0A
FW_SKY_BLUE       	= $0B
FW_YELLOW         	= $0C
FW_WHITE          	= $0D
FW_PASTEL_BLUE    	= $0E
FW_ORANGE         	= $0F
FW_PINK           	= $10
FW_PASTEL_MAGENTA 	= $11
FW_BRIGHT_GREEN   	= $12
FW_SEA_GREEN      	= $13
FW_BRIGHT_CYAN    	= $14
FW_LIME           	= $15
FW_PASTEL_GREEN   	= $16
FW_PASTEL_CYAN    	= $17
FW_BRIGHT_YELLOW  	= $18
FW_PASTEL_YELLOW  	= $19
FW_BRIGHT_WHITE   	= $1A	; Blanc Brillant