? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConMoveCsr

	extrn	ConMoveCsr:far

ConMoveCsr_code	segment public 'code'
		assume	cs:ConMoveCsr_code
		public	ConMoveCsr_

ConMoveCsr_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [bp+10]
		push	word ptr [bp+12]

		call	ConMoveCsr

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConMoveCsr_	endp

ConMoveCsr_code ends

		end
