; Hc/NtDCompositionSynchronize
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionSynchronize:DWORD

.DATA
.CODE

HcDCompositionSynchronize PROC
	mov r10, rcx
	mov eax, sciDCompositionSynchronize
	syscall
	ret
HcDCompositionSynchronize ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionSynchronize:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionSynchronize PROC
	mov eax, sciDCompositionSynchronize
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
HcDCompositionSynchronize ENDP

ENDIF

END