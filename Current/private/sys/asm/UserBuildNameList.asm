; Hc/NtUserBuildNameList
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserBuildNameList:DWORD

.DATA
.CODE

HcUserBuildNameList PROC
	mov r10, rcx
	mov eax, sciUserBuildNameList
	syscall
	ret
HcUserBuildNameList ENDP

ELSE
; 32bit

EXTERNDEF C sciUserBuildNameList:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserBuildNameList PROC
	mov eax, sciUserBuildNameList
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
HcUserBuildNameList ENDP

ENDIF

END