; Hc/NtGdiDdDDISetStablePowerState
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDISetStablePowerState:DWORD

.DATA
.CODE

HcGdiDdDDISetStablePowerState PROC
	mov r10, rcx
	mov eax, sciGdiDdDDISetStablePowerState
	syscall
	ret
HcGdiDdDDISetStablePowerState ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDISetStablePowerState:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDISetStablePowerState PROC
	mov eax, sciGdiDdDDISetStablePowerState
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
HcGdiDdDDISetStablePowerState ENDP

ENDIF

END