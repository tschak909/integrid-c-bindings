? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConKeyPressed

	extrn	ConKeyPressed:far

ConKeyPressed_code	segment public 'code'
		assume	cs:ConKeyPressed_code
		public	ConKeyPressed_

ConKeyPressed_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	ConKeyPressed

		and	ax,0FFH
		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConKeyPressed_	endp

ConKeyPressed_code ends

		end
