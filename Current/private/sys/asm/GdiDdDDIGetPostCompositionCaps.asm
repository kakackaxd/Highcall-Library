; Hc/NtGdiDdDDIGetPostCompositionCaps
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIGetPostCompositionCaps:DWORD

.DATA
.CODE

HcGdiDdDDIGetPostCompositionCaps PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIGetPostCompositionCaps
	syscall
	ret
HcGdiDdDDIGetPostCompositionCaps ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIGetPostCompositionCaps:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIGetPostCompositionCaps PROC
	mov eax, sciGdiDdDDIGetPostCompositionCaps
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
HcGdiDdDDIGetPostCompositionCaps ENDP

ENDIF

END