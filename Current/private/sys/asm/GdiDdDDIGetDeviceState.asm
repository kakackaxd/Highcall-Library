; Hc/NtGdiDdDDIGetDeviceState
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIGetDeviceState:DWORD

.DATA
.CODE

HcGdiDdDDIGetDeviceState PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIGetDeviceState
	syscall
	ret
HcGdiDdDDIGetDeviceState ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIGetDeviceState:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIGetDeviceState PROC
	mov eax, sciGdiDdDDIGetDeviceState
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
HcGdiDdDDIGetDeviceState ENDP

ENDIF

END