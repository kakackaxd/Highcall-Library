; Hc/NtDCompositionSetChannelCommitCompletionEvent
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionSetChannelCommitCompletionEvent:DWORD

.DATA
.CODE

HcDCompositionSetChannelCommitCompletionEvent PROC
	mov r10, rcx
	mov eax, sciDCompositionSetChannelCommitCompletionEvent
	syscall
	ret
HcDCompositionSetChannelCommitCompletionEvent ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionSetChannelCommitCompletionEvent:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionSetChannelCommitCompletionEvent PROC
	mov eax, sciDCompositionSetChannelCommitCompletionEvent
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
HcDCompositionSetChannelCommitCompletionEvent ENDP

ENDIF

END