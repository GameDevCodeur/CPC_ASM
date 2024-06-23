
CMASK	= &B6A3			;Address for colormask
									;464: $B338, 664/6128: $B6A3
FPLOT_M2:
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
	LD A, E					;Lowbyte X to A
	SRL D						;calculate X\8, because
	RR E						;8 pixel per byte
	SRL D
  RR E
  SRL E
	ADD HL,DE				;+ HL = Screenaddress
	LD C,%10000000	;Bitmask for MODE 2
  AND %00000111		;A = X MOD 8
  JR Z, NSHIFT		;-> = 0, no shift		
SHIFT:
	SRL C						;move bitmask to pixel
	DEC A						;loop counter
	JR NZ,SHIFT			;-position
NSHIFT:
	LD A, (CMASK)		;get color mask
	XOR (HL)				;XOR screenbyte
	AND C						;AND bitmask
	XOR (HL)				;XOR screenbyte
	LD (HL), A			;new screenbyte
	RET							;done