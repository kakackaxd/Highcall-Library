; Hc/NtUserCloseDesktop
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserCloseDesktop:DWORD

.DATA
.CODE

HcUserCloseDesktop PROC
	mov r10, rcx
	mov eax, sciUserCloseDesktop
	syscall
	ret
HcUserCloseDesktop ENDP

ELSE
; 32bit

EXTERNDEF C sciUserCloseDesktop:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserCloseDesktop PROC
	mov eax, sciUserCloseDesktop
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
HcUserCloseDesktop ENDP

ENDIF

END