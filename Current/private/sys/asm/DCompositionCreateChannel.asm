; Hc/NtDCompositionCreateChannel
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionCreateChannel:DWORD

.DATA
.CODE

HcDCompositionCreateChannel PROC
	mov r10, rcx
	mov eax, sciDCompositionCreateChannel
	syscall
	ret
HcDCompositionCreateChannel ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionCreateChannel:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionCreateChannel PROC
	mov eax, sciDCompositionCreateChannel
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
HcDCompositionCreateChannel ENDP

ENDIF

END