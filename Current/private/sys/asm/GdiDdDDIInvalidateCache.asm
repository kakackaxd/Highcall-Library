; Hc/NtGdiDdDDIInvalidateCache
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIInvalidateCache:DWORD

.DATA
.CODE

HcGdiDdDDIInvalidateCache PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIInvalidateCache
	syscall
	ret
HcGdiDdDDIInvalidateCache ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIInvalidateCache:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIInvalidateCache PROC
	mov eax, sciGdiDdDDIInvalidateCache
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
HcGdiDdDDIInvalidateCache ENDP

ENDIF

END