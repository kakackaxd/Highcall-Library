; Hc/NtUserSfmGetLogicalSurfaceBinding
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSfmGetLogicalSurfaceBinding:DWORD

.DATA
.CODE

HcUserSfmGetLogicalSurfaceBinding PROC
	mov r10, rcx
	mov eax, sciUserSfmGetLogicalSurfaceBinding
	syscall
	ret
HcUserSfmGetLogicalSurfaceBinding ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSfmGetLogicalSurfaceBinding:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSfmGetLogicalSurfaceBinding PROC
	mov eax, sciUserSfmGetLogicalSurfaceBinding
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
HcUserSfmGetLogicalSurfaceBinding ENDP

ENDIF

END