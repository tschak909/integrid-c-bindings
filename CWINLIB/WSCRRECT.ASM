? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinScrollRectangle

	extrn	WinScrollRectangle:far

WinScrollRectangle_code	segment public 'code'
		assume	cs:WinScrollRectangle_code
		public	WinScrollRectangle_

WinScrollRectangle_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		push	word ptr [BP+14]

		push	word ptr [BP+16]

		call	WinScrollRectangle

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinScrollRectangle_	endp

WinScrollRectangle_code ends

		end
