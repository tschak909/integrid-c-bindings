	name	BaseLine

	extrn	BaseLine:far

BaseLine_code	segment public 'code'
		assume	cs:BaseLine_code
		public	BaseLine_

BaseLine_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	BaseLine

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

BaseLine_	endp

BaseLine_code ends

		end
