; Hc/NtUserGetControlColor
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetControlColor:DWORD

.DATA
.CODE

HcUserGetControlColor PROC
	mov r10, rcx
	mov eax, sciUserGetControlColor
	syscall
	ret
HcUserGetControlColor ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetControlColor:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetControlColor PROC
	mov eax, sciUserGetControlColor
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
HcUserGetControlColor ENDP

ENDIF

END