? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinInvertChar

	extrn	WinInvertChar:far

WinInvertChar_code	segment public 'code'
		assume	cs:WinInvertChar_code
		public	WinInvertChar_

WinInvertChar_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]

		call	WinInvertChar

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinInvertChar_	endp

WinInvertChar_code ends

		end
