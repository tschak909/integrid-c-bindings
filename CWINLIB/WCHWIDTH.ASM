	name	CharWidth

	extrn	CharWidth:far

CharWidth_code	segment public 'code'
		assume	cs:CharWidth_code
		public	CharWidth_

CharWidth_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	CharWidth

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

CharWidth_	endp

CharWidth_code ends

		end
