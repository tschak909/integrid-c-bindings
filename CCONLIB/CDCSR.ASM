? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConDefCsr

	extrn	ConDefCsr:far

ConDefCsr_code	segment public 'code'
		assume	cs:ConDefCsr_code
		public	ConDefCsr_

ConDefCsr_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [bp+10]

		call	ConDefCsr

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConDefCsr_	endp

ConDefCsr_code ends

		end
