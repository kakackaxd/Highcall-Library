; Hc/NtGdiMonoBitmap
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiMonoBitmap:DWORD

.DATA
.CODE

HcGdiMonoBitmap PROC
	mov r10, rcx
	mov eax, sciGdiMonoBitmap
	syscall
	ret
HcGdiMonoBitmap ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiMonoBitmap:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiMonoBitmap PROC
	mov eax, sciGdiMonoBitmap
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
HcGdiMonoBitmap ENDP

ENDIF

END