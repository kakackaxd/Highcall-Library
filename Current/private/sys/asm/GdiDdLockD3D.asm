; Hc/NtGdiDdLockD3D
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdLockD3D:DWORD

.DATA
.CODE

HcGdiDdLockD3D PROC
	mov r10, rcx
	mov eax, sciGdiDdLockD3D
	syscall
	ret
HcGdiDdLockD3D ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdLockD3D:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdLockD3D PROC
	mov eax, sciGdiDdLockD3D
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
HcGdiDdLockD3D ENDP

ENDIF

END