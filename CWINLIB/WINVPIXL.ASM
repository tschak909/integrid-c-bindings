? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinInvertPixel

	extrn	WinInvertPixel:far

WinInvertPixel_code	segment public 'code'
		assume	cs:WinInvertPixel_code
		public	WinInvertPixel_

WinInvertPixel_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]

		call	WinInvertPixel

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinInvertPixel_	endp

WinInvertPixel_code ends

		end
