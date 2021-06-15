.386
.model flat, stdcall
.stack 4096

ExitProcess proto, dwExitCode:dword
.data
	qVal QWORD 0506030704080102h
.code
; Student: Astrid Dieguez
; Class: CSC3210
; Assignment#: 3 Part 3
; Description:	This program initializes an array called qVal which contains
;		a number that is 64-bits in size. The values can be
;		separated into 4 WORD(s) and extracted using the PTR operator.
;		This values are extracted summed together in the AX register.
main proc
	mov ax, 0
	add ax, WORD PTR qVal
	add ax, WORD PTR qVal + 2
	add ax, WORD PTR qVal + 4
	add ax, WORD PTR qVal + 6
	invoke ExitProcess, 0
main endp
end main