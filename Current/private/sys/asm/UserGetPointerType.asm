; Hc/NtUserGetPointerType
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetPointerType:DWORD

.DATA
.CODE

HcUserGetPointerType PROC
	mov r10, rcx
	mov eax, sciUserGetPointerType
	syscall
	ret
HcUserGetPointerType ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetPointerType:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetPointerType PROC
	mov eax, sciUserGetPointerType
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
HcUserGetPointerType ENDP

ENDIF

END