; Hc/NtUserSetThreadState
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetThreadState:DWORD

.DATA
.CODE

HcUserSetThreadState PROC
	mov r10, rcx
	mov eax, sciUserSetThreadState
	syscall
	ret
HcUserSetThreadState ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetThreadState:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetThreadState PROC
	mov eax, sciUserSetThreadState
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
HcUserSetThreadState ENDP

ENDIF

END