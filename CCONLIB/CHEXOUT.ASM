? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConHexOut

	extrn	ConHexOut:far

ConHexOut_code	segment public 'code'
		assume	cs:ConHexOut_code
		public	ConHexOut_

ConHexOut_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [bp+10]

		call	ConHexOut

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConHexOut_	endp

ConHexOut_code ends

		end
