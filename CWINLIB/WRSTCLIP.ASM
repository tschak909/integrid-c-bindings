? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinResetClip

	extrn	WinResetClip:far

WinResetClip_code	segment public 'code'
		assume	cs:WinResetClip_code
		public	WinResetClip_

WinResetClip_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	WinResetClip

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinResetClip_	endp

WinResetClip_code ends

		end
