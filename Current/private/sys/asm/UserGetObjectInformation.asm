; Hc/NtUserGetObjectInformation
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetObjectInformation:DWORD

.DATA
.CODE

HcUserGetObjectInformation PROC
	mov r10, rcx
	mov eax, sciUserGetObjectInformation
	syscall
	ret
HcUserGetObjectInformation ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetObjectInformation:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetObjectInformation PROC
	mov eax, sciUserGetObjectInformation
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
HcUserGetObjectInformation ENDP

ENDIF

END