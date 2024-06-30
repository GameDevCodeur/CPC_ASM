;****************************************************************
;Source: https://www.cpcwiki.eu/index.php/Programming:Fast_plot *
;Input: DE = X (0..319), HL = Y (0..199)                        *
;Mode 0: 160×200 with 16 colors (4 bpp)	                        *
;---------------------------------------------------------------*

CMASK	= &B6A3				;Address for colormask
										;464: $B338, 664/6128: $B6A3
FPLOT_M0:
		LD A, L					;A = Lowbyte Y
		AND %00000111		;isolate Bit 0..2
		LD H, A					;= y MOD 8 to H
		XOR L						;A = Bit 3..7 of Y
		LD L, A					;= (Y\8)*8 to L
		LD C, A					;store in C
		LD B, &60				;B = &C0\2 = Highbyte Screenstart\2
		ADD HL, HL			;HL * 2
		ADD HL, HL			;HL * 4
		ADD HL, BC			;+ BC = Startaddress
		ADD HL, HL			;of the raster line
		SRL E						;calculate X\2, because 2 ppb, Carry is X MOD 2
		LD C, %10101010	;Bitmask for MODE 0 (for left pixel)
		JR NC, NSHIFT		;-> = 0, no shift
SHIFT: 	
		LD C, %01010101	;Bitmask for MODE 0 (for right pixel)
NSHIFT:	
		ADD HL, DE			;+ HL = Screenaddress
		LD A, (CMASK)		;get color mask
		XOR (HL)				;XOR screenbyte
		AND C						;AND bitmask
		XOR (HL)				;XOR screenbyte
		LD (HL), A			;new screenbyte
		RET							;done