; Hc/NtUserCreateInputContext
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserCreateInputContext:DWORD

.DATA
.CODE

HcUserCreateInputContext PROC
	mov r10, rcx
	mov eax, sciUserCreateInputContext
	syscall
	ret
HcUserCreateInputContext ENDP

ELSE
; 32bit

EXTERNDEF C sciUserCreateInputContext:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserCreateInputContext PROC
	mov eax, sciUserCreateInputContext
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
HcUserCreateInputContext ENDP

ENDIF

END