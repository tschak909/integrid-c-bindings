? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinTestPixel

	extrn	WinTestPixel:far

WinTestPixel_code	segment public 'code'
		assume	cs:WinTestPixel_code
		public	WinTestPixel_

WinTestPixel_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]

		call	WinTestPixel

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinTestPixel_	endp

WinTestPixel_code ends

		end
