; Hc/NtUserChildWindowFromPointEx
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserChildWindowFromPointEx:DWORD

.DATA
.CODE

HcUserChildWindowFromPointEx PROC
	mov r10, rcx
	mov eax, sciUserChildWindowFromPointEx
	syscall
	ret
HcUserChildWindowFromPointEx ENDP

ELSE
; 32bit

EXTERNDEF C sciUserChildWindowFromPointEx:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserChildWindowFromPointEx PROC
	mov eax, sciUserChildWindowFromPointEx
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
HcUserChildWindowFromPointEx ENDP

ENDIF

END