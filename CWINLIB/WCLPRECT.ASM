? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinClipRectangle

	extrn	WinClipRectangle:far

WinClipRectangle_code	segment public 'code'
		assume	cs:WinClipRectangle_code
		public	WinClipRectangle_

WinClipRectangle_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		call	WinClipRectangle

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinClipRectangle_	endp

WinClipRectangle_code ends

		end