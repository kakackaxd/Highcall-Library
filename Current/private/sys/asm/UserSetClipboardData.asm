; Hc/NtUserSetClipboardData
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetClipboardData:DWORD

.DATA
.CODE

HcUserSetClipboardData PROC
	mov r10, rcx
	mov eax, sciUserSetClipboardData
	syscall
	ret
HcUserSetClipboardData ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetClipboardData:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetClipboardData PROC
	mov eax, sciUserSetClipboardData
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
HcUserSetClipboardData ENDP

ENDIF

END