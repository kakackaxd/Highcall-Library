; Hc/NtGdiDDCCIGetCapabilitiesStringLength
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDDCCIGetCapabilitiesStringLength:DWORD

.DATA
.CODE

HcGdiDDCCIGetCapabilitiesStringLength PROC
	mov r10, rcx
	mov eax, sciGdiDDCCIGetCapabilitiesStringLength
	syscall
	ret
HcGdiDDCCIGetCapabilitiesStringLength ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDDCCIGetCapabilitiesStringLength:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDDCCIGetCapabilitiesStringLength PROC
	mov eax, sciGdiDDCCIGetCapabilitiesStringLength
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
HcGdiDDCCIGetCapabilitiesStringLength ENDP

ENDIF

END