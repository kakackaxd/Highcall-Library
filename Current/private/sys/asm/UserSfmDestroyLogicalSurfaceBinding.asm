; Hc/NtUserSfmDestroyLogicalSurfaceBinding
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSfmDestroyLogicalSurfaceBinding:DWORD

.DATA
.CODE

HcUserSfmDestroyLogicalSurfaceBinding PROC
	mov r10, rcx
	mov eax, sciUserSfmDestroyLogicalSurfaceBinding
	syscall
	ret
HcUserSfmDestroyLogicalSurfaceBinding ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSfmDestroyLogicalSurfaceBinding:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSfmDestroyLogicalSurfaceBinding PROC
	mov eax, sciUserSfmDestroyLogicalSurfaceBinding
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
HcUserSfmDestroyLogicalSurfaceBinding ENDP

ENDIF

END