; Hc/NtGdiAnyLinkedFonts
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiAnyLinkedFonts:DWORD

.DATA
.CODE

HcGdiAnyLinkedFonts PROC
	mov r10, rcx
	mov eax, sciGdiAnyLinkedFonts
	syscall
	ret
HcGdiAnyLinkedFonts ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiAnyLinkedFonts:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiAnyLinkedFonts PROC
	mov eax, sciGdiAnyLinkedFonts
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
HcGdiAnyLinkedFonts ENDP

ENDIF

END