? a?R? d 	? w ?????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinHandlePhone

	extrn	WinHandlePhone:far

WinHandlePhone_code	segment public 'code'
		assume	cs:WinHandlePhone_code
		public	WinHandlePhone_

WinHandlePhone_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

	     	push	word ptr [BP+10]
		
		push	word ptr [BP+14]
		push	word ptr [BP+12]

		push	word ptr [BP+18]
		push	word ptr [BP+16]

		call	WinHandlePhone

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinHandlePhone_	endp

WinHandlePhone_code ends

		end
