; Hc/NtGdiSetSizeDevice
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiSetSizeDevice:DWORD

.DATA
.CODE

HcGdiSetSizeDevice PROC
	mov r10, rcx
	mov eax, sciGdiSetSizeDevice
	syscall
	ret
HcGdiSetSizeDevice ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiSetSizeDevice:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiSetSizeDevice PROC
	mov eax, sciGdiSetSizeDevice
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
HcGdiSetSizeDevice ENDP

ENDIF

END