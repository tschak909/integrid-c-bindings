? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinInvertRectangle

	extrn	WinInvertRectangle:far

WinInvertRectangle_code	segment public 'code'
		assume	cs:WinInvertRectangle_code
		public	WinInvertRectangle_

WinInvertRectangle_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		call	WinInvertRectangle

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinInvertRectangle_	endp

WinInvertRectangle_code ends

		end
