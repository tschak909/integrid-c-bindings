? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinErasePixel

	extrn	WinErasePixel:far

WinErasePixel_code	segment public 'code'
		assume	cs:WinErasePixel_code
		public	WinErasePixel_

WinErasePixel_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]

		call	WinErasePixel

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinErasePixel_	endp

WinErasePixel_code ends

		end
