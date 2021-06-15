; Student Name: Astrid Dieguez
; Class: CSC3210
; Assignment: #4
; Description: This program implements a while loop with an
; if/else statement into assembly language. Three main
; variables, a, b, and x, are used in the loop.

.386
.model flat, stdcall
.stack 4096

ExitProcess proto, dwExitCode:dword
.data
	valA WORD 9
	valB WORD 8
	valX SWORD 15
	sum WORD ?
.code
main proc
	mov dx, 0
	WHILE_CHECK:
	mov ax, valX
	cmp ax, 0
	jge WHILE_BLOCK
	jmp END_HERE
	WHILE_BLOCK:
	mov ax, valX
	cmp ax, 3
	je ELSE_BLOCK
	mov bx, valA
	add bx, 3
	cmp ax, bx
	jle IF_BLOCK
	mov bx, valB
	sub bx, 3
	cmp ax, bx
	jl IF_BLOCK
	jmp ELSE_BLOCK
	IF_BLOCK:
	sub valX, 2
	add dx, 1
	jmp next
	ELSE_BLOCK:
	sub valX, 1
	next:
	jmp WHILE_CHECK
	END_HERE:
	mov sum, dx
	invoke ExitProcess, 0
main endp
end main
