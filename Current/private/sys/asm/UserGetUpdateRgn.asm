; Hc/NtUserGetUpdateRgn
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetUpdateRgn:DWORD

.DATA
.CODE

HcUserGetUpdateRgn PROC
	mov r10, rcx
	mov eax, sciUserGetUpdateRgn
	syscall
	ret
HcUserGetUpdateRgn ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetUpdateRgn:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetUpdateRgn PROC
	mov eax, sciUserGetUpdateRgn
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
HcUserGetUpdateRgn ENDP

ENDIF

END