? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConLineOut

	extrn	ConLineOut:far

ConLineOut_code	segment public 'code'
		assume	cs:ConLineOut_code
		public	ConLineOut_

ConLineOut_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [bp+12]
		push	word ptr [bp+10]
		push	word ptr [bp+14]

		call	ConLineOut

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConLineOut_	endp

ConLineOut_code ends

		end
