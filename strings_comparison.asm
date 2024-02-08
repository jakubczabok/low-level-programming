; This assembly program asks user for 2 string inputs and compares number of letters in each
; Program uses stack and procedures there are seperate procedures for both strings 
; Reccomended using DOSBOX to compile 

org 100h
start:
	mov ah, 9
	mov dx, instruction
	int 21h
	mov ah, 9
	mov dx, prompt
	int 21h
	call input
input:
	mov ah, 1
	int 21h
	cmp al, 13
	je end
	cmp al, 32
	je inputt
	cmp al, 65
	jae maybebigger
	call input
maybebigger:
	cmp al, 90
	jbe incrementation
	cmp al, 97
	jae maybesmaller
	call input
maybebigger2:
	cmp al, 90
	jbe incrementation2
	cmp al, 97
	jae maybesmaller2
	call input2
maybesmaller:
	cmp al, 122
	jbe incrementation
	call input
maybesmaller2:
	cmp al, 122
	jbe incrementation2
	call input2
incrementation:
	inc dword [number]
	call input
incrementation2:
	inc dword [number2]
	call input2
input2:
	mov ah, 1
	int 21h
	cmp al, 13
	je end
	cmp al, 32
	je comparison
	cmp al, 65
	jae maybebigger2
	call input2
comparison:
	mov ax, [number]
	mov bx, [number2]
	cmp ax, bx
	je equal
	mov ah, 9
	mov dx, itsnotequal
	int 21h 
	mov dword [number], 0
	mov dword [number2], 0
	jmp start
equal:
	mov ah, 9
	mov dx, itsequal
	int 21h
	mov dword [number], 0
	mov dword [number2], 0
	jmp start
end:
	mov ax, 4c00h
	int 21h

	instruction db 10,13,10,13,"Press ENTER to quit $"
	prompt db 10,13,10,13,"Enter 2 strings (text) ending each with SPACE: $"
	number dd 0
	number2 dd 0
	itsequal db 10,13,10,13,"Numbers of letters in strings are equal $"
	itsnotequal db 10,13,10,13,"Numbers of letters in strings are not equal  $"
