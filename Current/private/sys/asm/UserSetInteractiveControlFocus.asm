; Hc/NtUserSetInteractiveControlFocus
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetInteractiveControlFocus:DWORD

.DATA
.CODE

HcUserSetInteractiveControlFocus PROC
	mov r10, rcx
	mov eax, sciUserSetInteractiveControlFocus
	syscall
	ret
HcUserSetInteractiveControlFocus ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetInteractiveControlFocus:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetInteractiveControlFocus PROC
	mov eax, sciUserSetInteractiveControlFocus
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
HcUserSetInteractiveControlFocus ENDP

ENDIF

END