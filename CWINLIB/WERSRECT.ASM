? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinEraseRectangle

	extrn	WinEraseRectangle:far

WinEraseRectangle_code	segment public 'code'
		assume	cs:WinEraseRectangle_code
		public	WinEraseRectangle_

WinEraseRectangle_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		call	WinEraseRectangle

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinEraseRectangle_	endp

WinEraseRectangle_code ends

		end
