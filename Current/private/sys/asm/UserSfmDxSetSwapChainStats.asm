; Hc/NtUserSfmDxSetSwapChainStats
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSfmDxSetSwapChainStats:DWORD

.DATA
.CODE

HcUserSfmDxSetSwapChainStats PROC
	mov r10, rcx
	mov eax, sciUserSfmDxSetSwapChainStats
	syscall
	ret
HcUserSfmDxSetSwapChainStats ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSfmDxSetSwapChainStats:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSfmDxSetSwapChainStats PROC
	mov eax, sciUserSfmDxSetSwapChainStats
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
HcUserSfmDxSetSwapChainStats ENDP

ENDIF

END