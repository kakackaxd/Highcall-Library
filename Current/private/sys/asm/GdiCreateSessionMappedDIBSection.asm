; Hc/NtGdiCreateSessionMappedDIBSection
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiCreateSessionMappedDIBSection:DWORD

.DATA
.CODE

HcGdiCreateSessionMappedDIBSection PROC
	mov r10, rcx
	mov eax, sciGdiCreateSessionMappedDIBSection
	syscall
	ret
HcGdiCreateSessionMappedDIBSection ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiCreateSessionMappedDIBSection:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiCreateSessionMappedDIBSection PROC
	mov eax, sciGdiCreateSessionMappedDIBSection
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
HcGdiCreateSessionMappedDIBSection ENDP

ENDIF

END