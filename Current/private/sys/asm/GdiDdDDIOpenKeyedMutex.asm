; Hc/NtGdiDdDDIOpenKeyedMutex
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIOpenKeyedMutex:DWORD

.DATA
.CODE

HcGdiDdDDIOpenKeyedMutex PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIOpenKeyedMutex
	syscall
	ret
HcGdiDdDDIOpenKeyedMutex ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIOpenKeyedMutex:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIOpenKeyedMutex PROC
	mov eax, sciGdiDdDDIOpenKeyedMutex
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
HcGdiDdDDIOpenKeyedMutex ENDP

ENDIF

END