? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinDrawChars

	extrn	WinDrawChars:far

WinDrawChars_code	segment public 'code'
		assume	cs:WinDrawChars_code
		public	WinDrawChars_

WinDrawChars_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [bp+12]
		push	word ptr [bp+10]
				    
		push	word ptr [bp+14]

		push	word ptr [bp+16]

		push	word ptr [bp+18]

		call	WinDrawChars

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinDrawChars_	endp

WinDrawChars_code ends

		end
