; Hc/NtGdiUnloadPrinterDriver
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiUnloadPrinterDriver:DWORD

.DATA
.CODE

HcGdiUnloadPrinterDriver PROC
	mov r10, rcx
	mov eax, sciGdiUnloadPrinterDriver
	syscall
	ret
HcGdiUnloadPrinterDriver ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiUnloadPrinterDriver:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiUnloadPrinterDriver PROC
	mov eax, sciGdiUnloadPrinterDriver
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
HcGdiUnloadPrinterDriver ENDP

ENDIF

END