; Hc/NtUserSetWindowPlacement
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetWindowPlacement:DWORD

.DATA
.CODE

HcUserSetWindowPlacement PROC
	mov r10, rcx
	mov eax, sciUserSetWindowPlacement
	syscall
	ret
HcUserSetWindowPlacement ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetWindowPlacement:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetWindowPlacement PROC
	mov eax, sciUserSetWindowPlacement
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
HcUserSetWindowPlacement ENDP

ENDIF

END