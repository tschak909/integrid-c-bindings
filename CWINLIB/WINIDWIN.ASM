? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinInitDefaultWindow

	extrn	WinInitDefaultWindow:far

WinInitDefaultWindow_code	segment public 'code'
		assume	cs:WinInitDefaultWindow_code
		public	WinInitDefaultWindow_

WinInitDefaultWindow_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	WinInitDefaultWindow

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinInitDefaultWindow_	endp

WinInitDefaultWindow_code ends

		end
