; Hc/NtGdiUMPDEngFreeUserMem
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiUMPDEngFreeUserMem:DWORD

.DATA
.CODE

HcGdiUMPDEngFreeUserMem PROC
	mov r10, rcx
	mov eax, sciGdiUMPDEngFreeUserMem
	syscall
	ret
HcGdiUMPDEngFreeUserMem ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiUMPDEngFreeUserMem:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiUMPDEngFreeUserMem PROC
	mov eax, sciGdiUMPDEngFreeUserMem
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
HcGdiUMPDEngFreeUserMem ENDP

ENDIF

END