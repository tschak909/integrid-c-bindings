? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinDrawLine

	extrn	WinDrawLine:far

WinDrawLine_code	segment public 'code'
		assume	cs:WinDrawLine_code
		public	WinDrawLine_

WinDrawLine_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]
		push	word ptr [BP+14]
		push	word ptr [BP+16]

		call	WinDrawLine

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinDrawLine_	endp

WinDrawLine_code ends

		end
