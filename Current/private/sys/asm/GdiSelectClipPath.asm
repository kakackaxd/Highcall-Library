; Hc/NtGdiSelectClipPath
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiSelectClipPath:DWORD

.DATA
.CODE

HcGdiSelectClipPath PROC
	mov r10, rcx
	mov eax, sciGdiSelectClipPath
	syscall
	ret
HcGdiSelectClipPath ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiSelectClipPath:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiSelectClipPath PROC
	mov eax, sciGdiSelectClipPath
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
HcGdiSelectClipPath ENDP

ENDIF

END