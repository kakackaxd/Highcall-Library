; Hc/NtDCompositionEnableMMCSS
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionEnableMMCSS:DWORD

.DATA
.CODE

HcDCompositionEnableMMCSS PROC
	mov r10, rcx
	mov eax, sciDCompositionEnableMMCSS
	syscall
	ret
HcDCompositionEnableMMCSS ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionEnableMMCSS:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionEnableMMCSS PROC
	mov eax, sciDCompositionEnableMMCSS
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
HcDCompositionEnableMMCSS ENDP

ENDIF

END