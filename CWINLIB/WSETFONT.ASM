? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinSetFont

	extrn	WinSetFont:far

WinSetFont_code	segment public 'code'
		assume	cs:WinSetFont_code
		public	WinSetFont_

WinSetFont_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [bp+12]
		push	word ptr [bp+10]

		push	word ptr [bp+16]
		push	word ptr [bp+14]

		push	word ptr [bp+18]

		call	WinSetFont

		mov	dx,es
		mov	ax,bx

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinSetFont_	endp

WinSetFont_code ends

		end
