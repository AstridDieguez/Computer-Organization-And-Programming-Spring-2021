.386
.model flat, stdcall
.stack 4096

; Class: CSC3210
; Assignment#: 5
; Description: This program uses a subroutine called Series and 
; takes a parameter nVal to calculate a sum series of nVal.
; The subroutine is recursive, by which it calls itself
; several times before reaching a return instruction. It also
; uses the stack frame to calculate the summation of nVal.

ExitProcess proto, dwExitCode:dword
.data
	nVal WORD 4
.code
main proc
	mov ecx, 0
	mov eax, 0
	movzx ebx, nVal
	push ebx
	call Series
	invoke ExitProcess, 0
main endp
Series proc
	push ebp
	mov ebp, esp
	mov ebx, [ebp + 8]
	cmp ebx, 0
	ja L1
	jmp L2
	L1:
	sub ebx, 1
	push ebx
	call Series
	pop ecx
	add eax, [ebp + 8]
	L2:
	pop ebp
	ret
Series endp
end main
