? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinSetClip

	extrn	WinSetClip:far

WinSetClip_code	segment public 'code'
		assume	cs:WinSetClip_code
		public	WinSetClip_

WinSetClip_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+12]
		push	word ptr [BP+10]

		call	WinSetClip

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinSetClip_	endp

WinSetClip_code ends

		end
