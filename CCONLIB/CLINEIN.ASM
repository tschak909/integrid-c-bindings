? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConLineIn

	extrn	ConLineIn:far

ConLineIn_code	segment public 'code'
		assume	cs:ConLineIn_code
		public	ConLineIn_

ConLineIn_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [bp+12]
		push	word ptr [bp+10]
		push	word ptr [bp+14]

		call	ConLineIn

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConLineIn_	endp

ConLineIn_code ends

		end
