.386
.model flat, stdcall
.stack 4096

ExitProcess proto, dwExitCode:dword
.data
	inputStr BYTE 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'
.code
; Student: Astrid Dieguez
; Class: CSC3210
; Assignment#: 3 Part 2
; Description:	This program uses a loop instruction with indirect addressing
;		to reverse an array call inputArray. This array contains 8 elements
;		and the job of the loop is to exchange the elements in order to
; 		reverse their order.	
main proc
	mov ecx, 4
	mov edi, 0
	mov eax, LENGTHOF inputStr - 1
	mov ebx, 0
	L1:
		mov bl, [inputStr+edi]
		xchg bl, [inputStr+eax]
		mov [inputStr+edi], bl
		add edi, 1
		sub eax, 1
	loop l1
	invoke ExitProcess, 0
main endp
end main