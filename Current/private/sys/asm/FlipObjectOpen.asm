; Hc/NtFlipObjectOpen
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciFlipObjectOpen:DWORD

.DATA
.CODE

HcFlipObjectOpen PROC
	mov r10, rcx
	mov eax, sciFlipObjectOpen
	syscall
	ret
HcFlipObjectOpen ENDP

ELSE
; 32bit

EXTERNDEF C sciFlipObjectOpen:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcFlipObjectOpen PROC
	mov eax, sciFlipObjectOpen
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcFlipObjectOpen ENDP

ENDIF

END