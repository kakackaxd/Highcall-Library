; Hc/NtUserResolveDesktopForWOW
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserResolveDesktopForWOW:DWORD

.DATA
.CODE

HcUserResolveDesktopForWOW PROC
	mov r10, rcx
	mov eax, sciUserResolveDesktopForWOW
	syscall
	ret
HcUserResolveDesktopForWOW ENDP

ELSE
; 32bit

EXTERNDEF C sciUserResolveDesktopForWOW:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserResolveDesktopForWOW PROC
	mov eax, sciUserResolveDesktopForWOW
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
HcUserResolveDesktopForWOW ENDP

ENDIF

END