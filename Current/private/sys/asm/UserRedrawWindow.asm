; Hc/NtUserRedrawWindow
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserRedrawWindow:DWORD

.DATA
.CODE

HcUserRedrawWindow PROC
	mov r10, rcx
	mov eax, sciUserRedrawWindow
	syscall
	ret
HcUserRedrawWindow ENDP

ELSE
; 32bit

EXTERNDEF C sciUserRedrawWindow:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserRedrawWindow PROC
	mov eax, sciUserRedrawWindow
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
HcUserRedrawWindow ENDP

ENDIF

END