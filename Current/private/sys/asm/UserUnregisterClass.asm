; Hc/NtUserUnregisterClass
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserUnregisterClass:DWORD

.DATA
.CODE

HcUserUnregisterClass PROC
	mov r10, rcx
	mov eax, sciUserUnregisterClass
	syscall
	ret
HcUserUnregisterClass ENDP

ELSE
; 32bit

EXTERNDEF C sciUserUnregisterClass:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserUnregisterClass PROC
	mov eax, sciUserUnregisterClass
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
HcUserUnregisterClass ENDP

ENDIF

END