; Hc/NtGdiGetTextExtentExW
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiGetTextExtentExW:DWORD

.DATA
.CODE

HcGdiGetTextExtentExW PROC
	mov r10, rcx
	mov eax, sciGdiGetTextExtentExW
	syscall
	ret
HcGdiGetTextExtentExW ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiGetTextExtentExW:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiGetTextExtentExW PROC
	mov eax, sciGdiGetTextExtentExW
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
HcGdiGetTextExtentExW ENDP

ENDIF

END