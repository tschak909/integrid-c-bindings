? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinClipLine

	extrn	WinClipLine:far

WinClipLine_code	segment public 'code'
		assume	cs:WinClipLine_code
		public	WinClipLine_

WinClipLine_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		push	word ptr [BP+16]
		push	word ptr [BP+14]

		push	word ptr [BP+20]
		push	word ptr [BP+18]

		push	word ptr [BP+24]
		push	word ptr [BP+22]

		call	WinClipLine

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinClipLine_	endp

WinClipLine_code ends

		end