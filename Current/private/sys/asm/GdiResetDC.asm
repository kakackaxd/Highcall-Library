; Hc/NtGdiResetDC
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiResetDC:DWORD

.DATA
.CODE

HcGdiResetDC PROC
	mov r10, rcx
	mov eax, sciGdiResetDC
	syscall
	ret
HcGdiResetDC ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiResetDC:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiResetDC PROC
	mov eax, sciGdiResetDC
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
HcGdiResetDC ENDP

ENDIF

END