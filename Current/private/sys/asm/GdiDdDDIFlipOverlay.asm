; Hc/NtGdiDdDDIFlipOverlay
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIFlipOverlay:DWORD

.DATA
.CODE

HcGdiDdDDIFlipOverlay PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIFlipOverlay
	syscall
	ret
HcGdiDdDDIFlipOverlay ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIFlipOverlay:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIFlipOverlay PROC
	mov eax, sciGdiDdDDIFlipOverlay
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
HcGdiDdDDIFlipOverlay ENDP

ENDIF

END