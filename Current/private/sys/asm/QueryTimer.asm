; Hc/NtQueryTimer
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciQueryTimer:DWORD

.DATA
.CODE

HcQueryTimer PROC
	mov r10, rcx
	mov eax, sciQueryTimer
	syscall
	ret
HcQueryTimer ENDP

ELSE
; 32bit

EXTERNDEF C sciQueryTimer:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcQueryTimer PROC
	mov eax, sciQueryTimer
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
HcQueryTimer ENDP

ENDIF

END