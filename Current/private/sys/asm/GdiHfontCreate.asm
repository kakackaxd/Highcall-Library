; Hc/NtGdiHfontCreate
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiHfontCreate:DWORD

.DATA
.CODE

HcGdiHfontCreate PROC
	mov r10, rcx
	mov eax, sciGdiHfontCreate
	syscall
	ret
HcGdiHfontCreate ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiHfontCreate:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiHfontCreate PROC
	mov eax, sciGdiHfontCreate
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
HcGdiHfontCreate ENDP

ENDIF

END