; Hc/NtAlpcConnectPort
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciAlpcConnectPort:DWORD

.DATA
.CODE

HcAlpcConnectPort PROC
	mov r10, rcx
	mov eax, sciAlpcConnectPort
	syscall
	ret
HcAlpcConnectPort ENDP

ELSE
; 32bit

EXTERNDEF C sciAlpcConnectPort:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcAlpcConnectPort PROC
	mov eax, sciAlpcConnectPort
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
HcAlpcConnectPort ENDP

ENDIF

END