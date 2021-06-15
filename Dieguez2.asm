; Student Name: Astrid Dieguez
; Class: CSC3210
; Assignment: #4
; Description: This program test if the most significant bit or MSB
; of a number is set. This program uses a mask to check if the bit
; is set. If it is set, the number is divided by 8 using shift 
; and if it is not set, the number is multiplied by 4 using shift

.386
.model flat, stdcall
.stack 4096

ExitProcess proto, dwExitCode:dword
.data
.code
main proc
	mov al, 88h
	mov bl, al
	and bl, 10000000b
	jz ELSE_BLOCK
	shr al, 3
	jmp next
	ELSE_BLOCK:
	shl al, 2
	next:
	invoke ExitProcess, 0
main endp
end main