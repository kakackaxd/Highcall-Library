; Hc/NtGdiDdDDISetVidPnSourceOwner1
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDISetVidPnSourceOwner1:DWORD

.DATA
.CODE

HcGdiDdDDISetVidPnSourceOwner1 PROC
	mov r10, rcx
	mov eax, sciGdiDdDDISetVidPnSourceOwner1
	syscall
	ret
HcGdiDdDDISetVidPnSourceOwner1 ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDISetVidPnSourceOwner1:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDISetVidPnSourceOwner1 PROC
	mov eax, sciGdiDdDDISetVidPnSourceOwner1
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
HcGdiDdDDISetVidPnSourceOwner1 ENDP

ENDIF

END