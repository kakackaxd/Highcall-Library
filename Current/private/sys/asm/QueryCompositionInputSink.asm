; Hc/NtQueryCompositionInputSink
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciQueryCompositionInputSink:DWORD

.DATA
.CODE

HcQueryCompositionInputSink PROC
	mov r10, rcx
	mov eax, sciQueryCompositionInputSink
	syscall
	ret
HcQueryCompositionInputSink ENDP

ELSE
; 32bit

EXTERNDEF C sciQueryCompositionInputSink:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcQueryCompositionInputSink PROC
	mov eax, sciQueryCompositionInputSink
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
HcQueryCompositionInputSink ENDP

ENDIF

END