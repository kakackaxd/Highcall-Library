; Hc/NtUserSetFocus
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetFocus:DWORD

.DATA
.CODE

HcUserSetFocus PROC
	mov r10, rcx
	mov eax, sciUserSetFocus
	syscall
	ret
HcUserSetFocus ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetFocus:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetFocus PROC
	mov eax, sciUserSetFocus
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
HcUserSetFocus ENDP

ENDIF

END