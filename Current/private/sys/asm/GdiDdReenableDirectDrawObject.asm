; Hc/NtGdiDdReenableDirectDrawObject
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdReenableDirectDrawObject:DWORD

.DATA
.CODE

HcGdiDdReenableDirectDrawObject PROC
	mov r10, rcx
	mov eax, sciGdiDdReenableDirectDrawObject
	syscall
	ret
HcGdiDdReenableDirectDrawObject ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdReenableDirectDrawObject:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdReenableDirectDrawObject PROC
	mov eax, sciGdiDdReenableDirectDrawObject
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
HcGdiDdReenableDirectDrawObject ENDP

ENDIF

END