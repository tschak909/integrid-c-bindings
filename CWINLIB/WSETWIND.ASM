? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinSetWindow

	extrn	WinSetWindow:far

WinSetWindow_code	segment public 'code'
		assume	cs:WinSetWindow_code
		public	WinSetWindow_

WinSetWindow_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		call	WinSetWindow

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinSetWindow_	endp

WinSetWindow_code ends

		end
