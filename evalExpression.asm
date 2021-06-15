COMMENT @
Student: Astrid Dieguez
Class: CSC3210
Assignment#: 2
Description: This program will use instructions such as
mov, add and sub to implement the following expression:
AL = (val3 + 7) - (val2 + val1) + (5/3)*7
with a result of -5, FB in 8-bit hex
@
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
; AL = (val3 + 7) - (val2 + val1) + (5/3)*7
.data
	val1 BYTE 12
	val2 BYTE 9
	val3 SBYTE 2
.code
main proc
	add val3, 7
	mov al, val1
	add val2, al
	mov al, val2
	sub val3, al
	mov bl, (5/3)*7
	add val3, bl
	mov al, val3

	invoke ExitProcess, 0
main endp
end main
