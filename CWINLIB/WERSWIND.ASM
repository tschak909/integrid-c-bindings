? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinEraseWindow

	extrn	WinEraseWindow:far

WinEraseWindow_code	segment public 'code'
		assume	cs:WinEraseWindow_code
		public	WinEraseWindow_

WinEraseWindow_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	WinEraseWindow

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinEraseWindow_	endp

WinEraseWindow_code ends

		end
