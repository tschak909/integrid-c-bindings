? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinScrollWindow

	extrn	WinScrollWindow:far

WinScrollWindow_code	segment public 'code'
		assume	cs:WinScrollWindow_code
		public	WinScrollWindow_

WinScrollWindow_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		push	word ptr [BP+14]

		push	word ptr [BP+16]

		call	WinScrollWindow

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinScrollWindow_	endp

WinScrollWindow_code ends

		end
