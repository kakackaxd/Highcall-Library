; Hc/NtUserRegisterShellPTPListener
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserRegisterShellPTPListener:DWORD

.DATA
.CODE

HcUserRegisterShellPTPListener PROC
	mov r10, rcx
	mov eax, sciUserRegisterShellPTPListener
	syscall
	ret
HcUserRegisterShellPTPListener ENDP

ELSE
; 32bit

EXTERNDEF C sciUserRegisterShellPTPListener:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserRegisterShellPTPListener PROC
	mov eax, sciUserRegisterShellPTPListener
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
HcUserRegisterShellPTPListener ENDP

ENDIF

END