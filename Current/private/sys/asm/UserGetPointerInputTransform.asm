; Hc/NtUserGetPointerInputTransform
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetPointerInputTransform:DWORD

.DATA
.CODE

HcUserGetPointerInputTransform PROC
	mov r10, rcx
	mov eax, sciUserGetPointerInputTransform
	syscall
	ret
HcUserGetPointerInputTransform ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetPointerInputTransform:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetPointerInputTransform PROC
	mov eax, sciUserGetPointerInputTransform
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
HcUserGetPointerInputTransform ENDP

ENDIF

END