? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinCopyRemoteRectangle

	extrn	WinCopyRemoteRectangle:far

WinCopyRemoteRectangle_code	segment public 'code'
		assume	cs:WinCopyRemoteRectangle_code
		public	WinCopyRemoteRectangle_

WinCopyRemoteRectangle_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]
		push	word ptr [BP+14]

		push	word ptr [BP+18]
		push	word ptr [BP+16]

		push	word ptr [BP+22]
		push	word ptr [BP+20]
			       
		push	word ptr [BP+26]
		push	word ptr [BP+24]

		call	WinCopyRemoteRectangle

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinCopyRemoteRectangle_	endp

WinCopyRemoteRectangle_code ends

		end
