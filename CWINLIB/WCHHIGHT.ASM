	name	CharHeight

	extrn	CharHeight:far

CharHeight_code	segment public 'code'
		assume	cs:CharHeight_code
		public	CharHeight_

CharHeight_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	CharHeight

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

CharHeight_	endp

CharHeight_code ends

		end
