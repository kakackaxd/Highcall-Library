; Hc/NtUserInternalGetWindowIcon
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserInternalGetWindowIcon:DWORD

.DATA
.CODE

HcUserInternalGetWindowIcon PROC
	mov r10, rcx
	mov eax, sciUserInternalGetWindowIcon
	syscall
	ret
HcUserInternalGetWindowIcon ENDP

ELSE
; 32bit

EXTERNDEF C sciUserInternalGetWindowIcon:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserInternalGetWindowIcon PROC
	mov eax, sciUserInternalGetWindowIcon
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
HcUserInternalGetWindowIcon ENDP

ENDIF

END