; Hc/NtUserSetProcessDpiAwareness
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetProcessDpiAwareness:DWORD

.DATA
.CODE

HcUserSetProcessDpiAwareness PROC
	mov r10, rcx
	mov eax, sciUserSetProcessDpiAwareness
	syscall
	ret
HcUserSetProcessDpiAwareness ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetProcessDpiAwareness:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetProcessDpiAwareness PROC
	mov eax, sciUserSetProcessDpiAwareness
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
HcUserSetProcessDpiAwareness ENDP

ENDIF

END