; Hc/NtUserGetImeHotKey
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetImeHotKey:DWORD

.DATA
.CODE

HcUserGetImeHotKey PROC
	mov r10, rcx
	mov eax, sciUserGetImeHotKey
	syscall
	ret
HcUserGetImeHotKey ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetImeHotKey:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetImeHotKey PROC
	mov eax, sciUserGetImeHotKey
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
HcUserGetImeHotKey ENDP

ENDIF

END