	name	LineHeight

	extrn	LineHeight:far

LineHeight_code	segment public 'code'
		assume	cs:LineHeight_code
		public	LineHeight_

LineHeight_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	LineHeight

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

LineHeight_	endp

LineHeight_code ends

		end
