; Hc/NtUserGetResizeDCompositionSynchronizationObject
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetResizeDCompositionSynchronizationObject:DWORD

.DATA
.CODE

HcUserGetResizeDCompositionSynchronizationObject PROC
	mov r10, rcx
	mov eax, sciUserGetResizeDCompositionSynchronizationObject
	syscall
	ret
HcUserGetResizeDCompositionSynchronizationObject ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetResizeDCompositionSynchronizationObject:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetResizeDCompositionSynchronizationObject PROC
	mov eax, sciUserGetResizeDCompositionSynchronizationObject
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
HcUserGetResizeDCompositionSynchronizationObject ENDP

ENDIF

END