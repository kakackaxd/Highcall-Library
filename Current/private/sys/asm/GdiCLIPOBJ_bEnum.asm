; Hc/NtGdiCLIPOBJ_bEnum
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiCLIPOBJ_bEnum:DWORD

.DATA
.CODE

HcGdiCLIPOBJ_bEnum PROC
	mov r10, rcx
	mov eax, sciGdiCLIPOBJ_bEnum
	syscall
	ret
HcGdiCLIPOBJ_bEnum ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiCLIPOBJ_bEnum:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiCLIPOBJ_bEnum PROC
	mov eax, sciGdiCLIPOBJ_bEnum
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
HcGdiCLIPOBJ_bEnum ENDP

ENDIF

END