; Hc/NtGdiDdDDIOpenResourceFromNtHandle
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIOpenResourceFromNtHandle:DWORD

.DATA
.CODE

HcGdiDdDDIOpenResourceFromNtHandle PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIOpenResourceFromNtHandle
	syscall
	ret
HcGdiDdDDIOpenResourceFromNtHandle ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIOpenResourceFromNtHandle:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIOpenResourceFromNtHandle PROC
	mov eax, sciGdiDdDDIOpenResourceFromNtHandle
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
HcGdiDdDDIOpenResourceFromNtHandle ENDP

ENDIF

END