; Hc/NtGdiDdDDIOpenResource
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIOpenResource:DWORD

.DATA
.CODE

HcGdiDdDDIOpenResource PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIOpenResource
	syscall
	ret
HcGdiDdDDIOpenResource ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIOpenResource:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIOpenResource PROC
	mov eax, sciGdiDdDDIOpenResource
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
HcGdiDdDDIOpenResource ENDP

ENDIF

END