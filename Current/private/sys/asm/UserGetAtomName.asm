; Hc/NtUserGetAtomName
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetAtomName:DWORD

.DATA
.CODE

HcUserGetAtomName PROC
	mov r10, rcx
	mov eax, sciUserGetAtomName
	syscall
	ret
HcUserGetAtomName ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetAtomName:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetAtomName PROC
	mov eax, sciUserGetAtomName
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
HcUserGetAtomName ENDP

ENDIF

END