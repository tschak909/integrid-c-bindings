? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinCopyRectangle

	extrn	WinCopyRectangle:far

WinCopyRectangle_code	segment public 'code'
		assume	cs:WinCopyRectangle_code
		public	WinCopyRectangle_

WinCopyRectangle_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		push	word ptr [BP+16]
		push	word ptr [BP+14]

		call	WinCopyRectangle

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinCopyRectangle_	endp

WinCopyRectangle_code ends

		end
