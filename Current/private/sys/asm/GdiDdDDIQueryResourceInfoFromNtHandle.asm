; Hc/NtGdiDdDDIQueryResourceInfoFromNtHandle
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIQueryResourceInfoFromNtHandle:DWORD

.DATA
.CODE

HcGdiDdDDIQueryResourceInfoFromNtHandle PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIQueryResourceInfoFromNtHandle
	syscall
	ret
HcGdiDdDDIQueryResourceInfoFromNtHandle ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIQueryResourceInfoFromNtHandle:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIQueryResourceInfoFromNtHandle PROC
	mov eax, sciGdiDdDDIQueryResourceInfoFromNtHandle
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
HcGdiDdDDIQueryResourceInfoFromNtHandle ENDP

ENDIF

END