; Hc/NtVisualCaptureBits
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciVisualCaptureBits:DWORD

.DATA
.CODE

HcVisualCaptureBits PROC
	mov r10, rcx
	mov eax, sciVisualCaptureBits
	syscall
	ret
HcVisualCaptureBits ENDP

ELSE
; 32bit

EXTERNDEF C sciVisualCaptureBits:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcVisualCaptureBits PROC
	mov eax, sciVisualCaptureBits
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
HcVisualCaptureBits ENDP

ENDIF

END