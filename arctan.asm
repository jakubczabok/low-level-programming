    ; This Asembly code contains function to calculate arctan using FPU
	
	section .text use32

	global	_arctan

	_arctan:

	%idefine	a	[ebp+8]

    	push ebp
    	mov ebp, esp

    	finit
    	fld dword a         
		fld1
    	fpatan           

    	leave
    	ret
