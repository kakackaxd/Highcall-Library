; Hc/NtRIMGetDevicePreparsedDataLockfree
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciRIMGetDevicePreparsedDataLockfree:DWORD

.DATA
.CODE

HcRIMGetDevicePreparsedDataLockfree PROC
	mov r10, rcx
	mov eax, sciRIMGetDevicePreparsedDataLockfree
	syscall
	ret
HcRIMGetDevicePreparsedDataLockfree ENDP

ELSE
; 32bit

EXTERNDEF C sciRIMGetDevicePreparsedDataLockfree:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcRIMGetDevicePreparsedDataLockfree PROC
	mov eax, sciRIMGetDevicePreparsedDataLockfree
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
HcRIMGetDevicePreparsedDataLockfree ENDP

ENDIF

END