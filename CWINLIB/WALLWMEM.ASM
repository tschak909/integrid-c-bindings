? a?R? d ? w ??????????? mP9     ? h?	 oP     ? nSystem-wide	name	WinAllocateWindowMemory

	extrn	WinAllocateWindowMemory:far

WinAllocateWindowMemory_code	segment public 'code'
		assume	cs:WinAllocateWindowMemory_code
		public	WinAllocateWindowMemory_

WinAllocateWindowMemory_	proc	far
		push	si
		push	di
		push	bp
		mov	bp,sp

		push	word ptr [bp+10]
		push	word ptr [bp+12]
		push	word ptr [bp+14]
		
		push	word ptr [bp+18]
		push	word ptr [bp+16]

		call	WinAllocateWindowMemory

		mov	dx,es
		mov	ax,bx

		mov	sp,bp
		pop	bp
		pop	di
		pop	si
		ret

WinAllocateWindowMemory_	endp

WinAllocateWindowMemory_code ends

		end
