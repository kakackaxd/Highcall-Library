; Hc/NtDCompositionDestroyConnection
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionDestroyConnection:DWORD

.DATA
.CODE

HcDCompositionDestroyConnection PROC
	mov r10, rcx
	mov eax, sciDCompositionDestroyConnection
	syscall
	ret
HcDCompositionDestroyConnection ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionDestroyConnection:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionDestroyConnection PROC
	mov eax, sciDCompositionDestroyConnection
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
HcDCompositionDestroyConnection ENDP

ENDIF

END