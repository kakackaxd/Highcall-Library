; Hc/NtGdiExtEscape
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiExtEscape:DWORD

.DATA
.CODE

HcGdiExtEscape PROC
	mov r10, rcx
	mov eax, sciGdiExtEscape
	syscall
	ret
HcGdiExtEscape ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiExtEscape:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiExtEscape PROC
	mov eax, sciGdiExtEscape
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
HcGdiExtEscape ENDP

ENDIF

END