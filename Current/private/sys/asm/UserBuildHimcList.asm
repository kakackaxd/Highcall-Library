; Hc/NtUserBuildHimcList
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserBuildHimcList:DWORD

.DATA
.CODE

HcUserBuildHimcList PROC
	mov r10, rcx
	mov eax, sciUserBuildHimcList
	syscall
	ret
HcUserBuildHimcList ENDP

ELSE
; 32bit

EXTERNDEF C sciUserBuildHimcList:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserBuildHimcList PROC
	mov eax, sciUserBuildHimcList
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
HcUserBuildHimcList ENDP

ENDIF

END