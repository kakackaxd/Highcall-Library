; Hc/NtUserGetCaretBlinkTime
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetCaretBlinkTime:DWORD

.DATA
.CODE

HcUserGetCaretBlinkTime PROC
	mov r10, rcx
	mov eax, sciUserGetCaretBlinkTime
	syscall
	ret
HcUserGetCaretBlinkTime ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetCaretBlinkTime:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetCaretBlinkTime PROC
	mov eax, sciUserGetCaretBlinkTime
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
HcUserGetCaretBlinkTime ENDP

ENDIF

END