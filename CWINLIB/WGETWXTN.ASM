? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinGetWindowExtent

	extrn	WinGetWindowExtent:far

WinGetWindowExtent_code	segment public 'code'
		assume	cs:WinGetWindowExtent_code
		public	WinGetWindowExtent_

WinGetWindowExtent_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		call	WinGetWindowExtent

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinGetWindowExtent_	endp

WinGetWindowExtent_code ends

		end
