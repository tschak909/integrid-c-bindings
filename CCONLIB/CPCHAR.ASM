? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConPeekChar

	extrn	ConPeekChar:far

ConPeekChar_code	segment public 'code'
		assume	cs:ConPeekChar_code
		public	ConPeekChar_

ConPeekChar_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	ConPeekChar

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConPeekChar_	endp

ConPeekChar_code ends

		end
