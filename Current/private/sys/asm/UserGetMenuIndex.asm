; Hc/NtUserGetMenuIndex
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetMenuIndex:DWORD

.DATA
.CODE

HcUserGetMenuIndex PROC
	mov r10, rcx
	mov eax, sciUserGetMenuIndex
	syscall
	ret
HcUserGetMenuIndex ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetMenuIndex:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetMenuIndex PROC
	mov eax, sciUserGetMenuIndex
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
HcUserGetMenuIndex ENDP

ENDIF

END