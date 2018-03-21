; ------------------------------------------------------------------------------------
; 	BOILER PLATE
; FOR : ? ( NASM )
; BY  : JON-STR
; ON  : 3-19-2018
; ------------------------------------------------------------------------------------

; compiler settings sec
[CPU 486]
[BITS 32]


section .text
	; code sec
	
	global _start

	
_start:
		; entry point of program
		; ARGS ( 0 ) : (  )
		; RETURN     : *IGNORE RETURN*
		
	call empty
	call exit
	
		
empty:
		; empty, does nothing
		; ARGS ( 0 ) : (  )
		; RETURN     : *IGNORE RETURN*	
		
	push ebp					; Save stack frame
	mov ebp, esp				; Init stack frame
		
	nop	
		
	pop ebp						; restore stack frame
		
	ret
	
	
exit:
		; end of program
		; ARGS ( 0 ) : (  )
		; RETURN     : *IGNORE RETURN*

	nop
	
	
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
	