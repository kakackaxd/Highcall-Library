; Hc/NtUserGetWindowFeedbackSetting
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetWindowFeedbackSetting:DWORD

.DATA
.CODE

HcUserGetWindowFeedbackSetting PROC
	mov r10, rcx
	mov eax, sciUserGetWindowFeedbackSetting
	syscall
	ret
HcUserGetWindowFeedbackSetting ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetWindowFeedbackSetting:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetWindowFeedbackSetting PROC
	mov eax, sciUserGetWindowFeedbackSetting
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
HcUserGetWindowFeedbackSetting ENDP

ENDIF

END