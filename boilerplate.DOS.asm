; ------------------------------------------------------------------------------------
; 	BOILER PLATE
; FOR : 8086 / MS-DOS
; BY  : JON-STR
; ON  : 3-19-2018
; ------------------------------------------------------------------------------------

; COMPILER SETTINGS
[CPU 8086]
[BITS 16]


; COM ORIGIN
org 0x100


section .text
	; code sec
	
	global _start

	
_start:
		; entry point of program
		; ARGS ( 0 ) : (  )
		; RETURN     : *IGNORE RETURN*
		
	call print
	call exit
	
		
empty:
		; empty, does nothing
		; ARGS ( 0 ) : (  )
		; RETURN     : *IGNORE RETURN*	
		
	push bp					; Save stack frame
	mov bp, sp				; Init stack frame
		
	nop	
		
	pop bp						; restore stack frame
		
	ret
	
	
exit:
		; end of program
		; ARGS ( 0 ) : (  )
		; RETURN     : *IGNORE RETURN*

	mov ah, 0x4C
	int 0x21
	
	
section .data
	; init'd data sec
	
	msg db 'Hello, World!', 0x0A
	len equ $-msg
	
	
section .bss
	; uinit'd data sec

	
	
; ------------------------------------------------------------------------------------	
; ATTN		: DOCUMENTATION STANDARD EXAMPLE
; VERSION	: 3.19.2018-1
; AUTHOR	: JON-STR
; ------------------------------------------------------------------------------------
; { BEGIN - CUT - LINE - AFTER - }
; exit:
		; end of program
		; ARGS ( 0 ) : (  )
		; RETURN     : *IGNORE RETURN*
; { END - CUT - LINE - BEFORE - }
; ------------------------------------------------------------------------------------
	