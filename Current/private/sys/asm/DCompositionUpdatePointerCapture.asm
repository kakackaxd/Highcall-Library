; Hc/NtDCompositionUpdatePointerCapture
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionUpdatePointerCapture:DWORD

.DATA
.CODE

HcDCompositionUpdatePointerCapture PROC
	mov r10, rcx
	mov eax, sciDCompositionUpdatePointerCapture
	syscall
	ret
HcDCompositionUpdatePointerCapture ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionUpdatePointerCapture:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionUpdatePointerCapture PROC
	mov eax, sciDCompositionUpdatePointerCapture
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
HcDCompositionUpdatePointerCapture ENDP

ENDIF

END