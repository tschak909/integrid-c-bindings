? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinDrawChar

	extrn	WinDrawChar:far

WinDrawChar_code	segment public 'code'
		assume	cs:WinDrawChar_code
		public	WinDrawChar_

WinDrawChar_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]
		push	word ptr [BP+14]

		call	WinDrawChar

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinDrawChar_	endp

WinDrawChar_code ends

		end
