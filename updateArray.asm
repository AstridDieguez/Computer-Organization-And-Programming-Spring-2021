.386
.model flat, stdcall
.stack 4096

ExitProcess proto, dwExitCode:dword
.data
	z DWORD 3 DUP (?)
	x WORD 10
	y WORD 15
	r WORD 4
.code
; Student: Astrid Dieguez
; Class: CSC3210
; Assignment#: 3
; Description:	This program creates an array of length 3 that is not initialized.
;		It also stores some values in variables named x, y and r. The program
;		updates each array item using the following expressions below:      		
; 		z0 = x + 130
; 		z1 = y + x - z0
; 		z2 = r + x - 13
main proc
	movzx eax, x
	add eax, 130
	mov z, eax

	movzx eax, y
	movzx ebx, x
	add eax, ebx
	sub eax, z
	mov z+4, eax

	movzx eax, r
	movzx ebx, x
	add eax, ebx
	sub eax, 13
	mov z+8, eax

	invoke ExitProcess, 0
main endp
end main
