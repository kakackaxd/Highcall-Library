; Hc/NtGdiCreateMetafileDC
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiCreateMetafileDC:DWORD

.DATA
.CODE

HcGdiCreateMetafileDC PROC
	mov r10, rcx
	mov eax, sciGdiCreateMetafileDC
	syscall
	ret
HcGdiCreateMetafileDC ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiCreateMetafileDC:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiCreateMetafileDC PROC
	mov eax, sciGdiCreateMetafileDC
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
HcGdiCreateMetafileDC ENDP

ENDIF

END