; Hc/NtUserGetLayeredWindowAttributes
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetLayeredWindowAttributes:DWORD

.DATA
.CODE

HcUserGetLayeredWindowAttributes PROC
	mov r10, rcx
	mov eax, sciUserGetLayeredWindowAttributes
	syscall
	ret
HcUserGetLayeredWindowAttributes ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetLayeredWindowAttributes:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetLayeredWindowAttributes PROC
	mov eax, sciUserGetLayeredWindowAttributes
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
HcUserGetLayeredWindowAttributes ENDP

ENDIF

END