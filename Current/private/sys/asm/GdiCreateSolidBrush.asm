; Hc/NtGdiCreateSolidBrush
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiCreateSolidBrush:DWORD

.DATA
.CODE

HcGdiCreateSolidBrush PROC
	mov r10, rcx
	mov eax, sciGdiCreateSolidBrush
	syscall
	ret
HcGdiCreateSolidBrush ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiCreateSolidBrush:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiCreateSolidBrush PROC
	mov eax, sciGdiCreateSolidBrush
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
HcGdiCreateSolidBrush ENDP

ENDIF

END