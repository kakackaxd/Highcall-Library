; Hc/NtUserPostThreadMessage
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserPostThreadMessage:DWORD

.DATA
.CODE

HcUserPostThreadMessage PROC
	mov r10, rcx
	mov eax, sciUserPostThreadMessage
	syscall
	ret
HcUserPostThreadMessage ENDP

ELSE
; 32bit

EXTERNDEF C sciUserPostThreadMessage:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserPostThreadMessage PROC
	mov eax, sciUserPostThreadMessage
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
HcUserPostThreadMessage ENDP

ENDIF

END