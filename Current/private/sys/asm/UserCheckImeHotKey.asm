; Hc/NtUserCheckImeHotKey
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserCheckImeHotKey:DWORD

.DATA
.CODE

HcUserCheckImeHotKey PROC
	mov r10, rcx
	mov eax, sciUserCheckImeHotKey
	syscall
	ret
HcUserCheckImeHotKey ENDP

ELSE
; 32bit

EXTERNDEF C sciUserCheckImeHotKey:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserCheckImeHotKey PROC
	mov eax, sciUserCheckImeHotKey
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
HcUserCheckImeHotKey ENDP

ENDIF

END