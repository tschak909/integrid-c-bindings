	name	WinEraseChar

	extrn	WinEraseChar:far

WinEraseChar_code	segment public 'code'
		assume	cs:WinEraseChar_code
		public	WinEraseChar_

WinEraseChar_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [BP+10]
		push	word ptr [BP+12]

		call	WinEraseChar

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinEraseChar_	endp

WinEraseChar_code ends

		end
