? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConCharIn

	extrn	ConCharIn:far

ConCharIn_code	segment public 'code'
		assume	cs:ConCharIn_code
		public	ConCharIn_

ConCharIn_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	ConCharIn

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConCharIn_	endp

ConCharIn_code ends

		end
