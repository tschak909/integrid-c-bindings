? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinDrawPixel

	extrn	WinDrawPixel:far

WinDrawPixel_code	segment public 'code'
		assume	cs:WinDrawPixel_code
		public	WinDrawPixel_

WinDrawPixel_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]

		call	WinDrawPixel

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinDrawPixel_	endp

WinDrawPixel_code ends

		end
