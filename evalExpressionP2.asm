COMMENT @
Student: Astrid Dieguez
Class: CSC3210
Assignment#: 2
Description: This program will use instructions such as
mov, add and sub to implement the following expression:
AL = -val2 + 7 - (-val3 + val1)
with a result of -12, FFF4 in 16-bit hex
with a result of -5, FB in 8-bit hex
@
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	val1 BYTE 12
	val2 SBYTE 9
	val3 SBYTE 2
.code
; BX = -val2 + 7 - (-val3 + val1)
main proc
	neg val2
	add val2, 7
	neg val3
	movsx ax, val3
	movzx bx, val1
	add ax, bx
	movsx cx, val2
	sub cx, ax
	mov bx, cx
	invoke ExitProcess, 0
main endp
end main
