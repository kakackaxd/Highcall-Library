; Hc/NtUserSetWindowRgn
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetWindowRgn:DWORD

.DATA
.CODE

HcUserSetWindowRgn PROC
	mov r10, rcx
	mov eax, sciUserSetWindowRgn
	syscall
	ret
HcUserSetWindowRgn ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetWindowRgn:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetWindowRgn PROC
	mov eax, sciUserSetWindowRgn
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
HcUserSetWindowRgn ENDP

ENDIF

END