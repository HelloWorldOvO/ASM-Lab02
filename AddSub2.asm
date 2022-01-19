TITLE Add and Subtract, Version 2         (AddSub2.asm)

; This program adds and subtracts 32-bit integers
; and stores the sum in a variable.

INCLUDE Irvine32.inc

.data
val0     dword  520h
val1     dword  20h
val2     dword  200h
val3     dword  100h

finalVal dword  ?

.code
main PROC
	mov eax,val0            ; start with 520h
	sub	eax,val1			; subtract 20h
	sub	eax,val2			; subtract 200h
	sub	eax,val3			; subtract 100h
	mov	finalVal,eax		; store the result (30000h)
	call	DumpRegs			; display the registers

	exit
main ENDP
END main