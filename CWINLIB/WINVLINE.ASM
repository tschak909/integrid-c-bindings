? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinInvertLine

	extrn	WinInvertLine:far

WinInvertLine_code	segment public 'code'
		assume	cs:WinInvertLine_code
		public	WinInvertLine_

WinInvertLine_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]
		push	word ptr [BP+14]
		push	word ptr [BP+16]

		call	WinInvertLine

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinInvertLine_	endp

WinInvertLine_code ends

		end
