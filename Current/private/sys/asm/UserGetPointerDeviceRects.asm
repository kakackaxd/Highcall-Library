; Hc/NtUserGetPointerDeviceRects
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetPointerDeviceRects:DWORD

.DATA
.CODE

HcUserGetPointerDeviceRects PROC
	mov r10, rcx
	mov eax, sciUserGetPointerDeviceRects
	syscall
	ret
HcUserGetPointerDeviceRects ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetPointerDeviceRects:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetPointerDeviceRects PROC
	mov eax, sciUserGetPointerDeviceRects
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
HcUserGetPointerDeviceRects ENDP

ENDIF

END