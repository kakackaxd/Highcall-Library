; Hc/NtGdiDvpUpdateVideoPort
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDvpUpdateVideoPort:DWORD

.DATA
.CODE

HcGdiDvpUpdateVideoPort PROC
	mov r10, rcx
	mov eax, sciGdiDvpUpdateVideoPort
	syscall
	ret
HcGdiDvpUpdateVideoPort ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDvpUpdateVideoPort:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDvpUpdateVideoPort PROC
	mov eax, sciGdiDvpUpdateVideoPort
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
HcGdiDvpUpdateVideoPort ENDP

ENDIF

END