? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinSetAlternateWindow

	extrn	WinSetAlternateWindow:far

WinSetAlternateWindow_code	segment public 'code'
		assume	cs:WinSetAlternateWindow_code
		public	WinSetAlternateWindow_

WinSetAlternateWindow_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		call	WinSetAlternateWindow

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinSetAlternateWindow_	endp

WinSetAlternateWindow_code ends

		end
