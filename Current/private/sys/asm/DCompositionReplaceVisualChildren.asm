; Hc/NtDCompositionReplaceVisualChildren
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionReplaceVisualChildren:DWORD

.DATA
.CODE

HcDCompositionReplaceVisualChildren PROC
	mov r10, rcx
	mov eax, sciDCompositionReplaceVisualChildren
	syscall
	ret
HcDCompositionReplaceVisualChildren ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionReplaceVisualChildren:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionReplaceVisualChildren PROC
	mov eax, sciDCompositionReplaceVisualChildren
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
HcDCompositionReplaceVisualChildren ENDP

ENDIF

END