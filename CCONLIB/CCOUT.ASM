? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	ConCharOut

	extrn	ConCharOut:far

ConCharOut_code	segment public 'code'
		assume	cs:ConCharOut_code
		public	ConCharOut_

ConCharOut_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [bp+10]

		call	ConCharOut

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

ConCharOut_	endp

ConCharOut_code ends

		end
