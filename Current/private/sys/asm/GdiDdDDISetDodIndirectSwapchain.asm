; Hc/NtGdiDdDDISetDodIndirectSwapchain
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDISetDodIndirectSwapchain:DWORD

.DATA
.CODE

HcGdiDdDDISetDodIndirectSwapchain PROC
	mov r10, rcx
	mov eax, sciGdiDdDDISetDodIndirectSwapchain
	syscall
	ret
HcGdiDdDDISetDodIndirectSwapchain ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDISetDodIndirectSwapchain:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDISetDodIndirectSwapchain PROC
	mov eax, sciGdiDdDDISetDodIndirectSwapchain
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
HcGdiDdDDISetDodIndirectSwapchain ENDP

ENDIF

END