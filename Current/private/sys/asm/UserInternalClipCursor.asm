; Hc/NtUserInternalClipCursor
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserInternalClipCursor:DWORD

.DATA
.CODE

HcUserInternalClipCursor PROC
	mov r10, rcx
	mov eax, sciUserInternalClipCursor
	syscall
	ret
HcUserInternalClipCursor ENDP

ELSE
; 32bit

EXTERNDEF C sciUserInternalClipCursor:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserInternalClipCursor PROC
	mov eax, sciUserInternalClipCursor
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
HcUserInternalClipCursor ENDP

ENDIF

END