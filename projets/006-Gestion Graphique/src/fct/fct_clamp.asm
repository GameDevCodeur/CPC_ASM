; Routine Z80 pour fixer la valeur dans la plage HL entre -$100 et +$100

clamp:
  ; In: HL = valeur à brider
  ; Out: HL = valeur bloquée
  ; Uses: A + flags
  ; (ce n'est pas mathématiquement correct, les valeurs 0x7F 
	; se fixent à -0x100, pour des raisons de performances)
  ld  a,h
  inc a
  sra a           ; sera 0 pour -256..+255 (+256 sera "bloqué")
  ret z
  ld  hl,$100
  ret p           ; si A était positif, serrez à 0x100
  ld  h,$FF-$100  ; -0x100 = 0xFF00, L est déjà nul
	ret