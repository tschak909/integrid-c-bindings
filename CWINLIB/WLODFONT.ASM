? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinLoadFont

	extrn	WinLoadFont:far

WinLoadFont_code	segment public 'code'
		assume	cs:WinLoadFont_code
		public	WinLoadFont_

WinLoadFont_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

	   	push	word ptr [bp+10]
		push	word ptr [bp+14]
		push	word ptr [bp+12]

		call	WinLoadFont

		mov	dx,es
		mov	ax,bx

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinLoadFont_	endp

WinLoadFont_code ends

		end
