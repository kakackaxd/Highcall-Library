; Hc/NtGdiCreatePatternBrushInternal
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiCreatePatternBrushInternal:DWORD

.DATA
.CODE

HcGdiCreatePatternBrushInternal PROC
	mov r10, rcx
	mov eax, sciGdiCreatePatternBrushInternal
	syscall
	ret
HcGdiCreatePatternBrushInternal ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiCreatePatternBrushInternal:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiCreatePatternBrushInternal PROC
	mov eax, sciGdiCreatePatternBrushInternal
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
HcGdiCreatePatternBrushInternal ENDP

ENDIF

END