? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinFrameWindow

	extrn	WinFrameWindow:far

WinFrameWindow_code	segment public 'code'
		assume	cs:WinFrameWindow_code
		public	WinFrameWindow_

WinFrameWindow_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		call	WinFrameWindow

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinFrameWindow_	endp

WinFrameWindow_code ends

		end
