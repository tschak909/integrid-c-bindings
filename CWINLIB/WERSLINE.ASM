? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinEraseLine

	extrn	WinEraseLine:far

WinEraseLine_code	segment public 'code'
		assume	cs:WinEraseLine_code
		public	WinEraseLine_

WinEraseLine_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]
		push	word ptr [BP+14]
		push	word ptr [BP+16]

		call	WinEraseLine

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinEraseLine_	endp

WinEraseLine_code ends

		end
