; Hc/NtRIMOnTimerNotification
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciRIMOnTimerNotification:DWORD

.DATA
.CODE

HcRIMOnTimerNotification PROC
	mov r10, rcx
	mov eax, sciRIMOnTimerNotification
	syscall
	ret
HcRIMOnTimerNotification ENDP

ELSE
; 32bit

EXTERNDEF C sciRIMOnTimerNotification:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcRIMOnTimerNotification PROC
	mov eax, sciRIMOnTimerNotification
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
HcRIMOnTimerNotification ENDP

ENDIF

END