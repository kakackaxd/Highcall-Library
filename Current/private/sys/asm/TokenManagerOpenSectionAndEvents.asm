; Hc/NtTokenManagerOpenSectionAndEvents
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciTokenManagerOpenSectionAndEvents:DWORD

.DATA
.CODE

HcTokenManagerOpenSectionAndEvents PROC
	mov r10, rcx
	mov eax, sciTokenManagerOpenSectionAndEvents
	syscall
	ret
HcTokenManagerOpenSectionAndEvents ENDP

ELSE
; 32bit

EXTERNDEF C sciTokenManagerOpenSectionAndEvents:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcTokenManagerOpenSectionAndEvents PROC
	mov eax, sciTokenManagerOpenSectionAndEvents
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
HcTokenManagerOpenSectionAndEvents ENDP

ENDIF

END