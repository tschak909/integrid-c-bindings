? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConResetDisplay

	extrn	ConResetDisplay:far

ConResetDisplay_code	segment public 'code'
		assume	cs:ConResetDisplay_code
		public	ConResetDisplay_

ConResetDisplay_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	ConResetDisplay

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConResetDisplay_	endp

ConResetDisplay_code ends

		end
