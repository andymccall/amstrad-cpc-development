;
; Title:		        02-helloworld - Assembler Example
;
; Description:          A program that prints "Hello, World!" to
;                       the console
; Author:		        Andy McCall, mailme@andymccall.co.uk
;
; Created:		        2024-08-12 @ 20:01
; Last Updated:	        2024-08-12 @ 20:01
;
; Modinfo:
;
;-----------------------------------------------------------

	DEVICE AMSTRADCPC6128
    
    org $1200

start:
    ld hl, string
printchar:
    ld a,(hl)
    cp 255
    ret z
    inc hl
    call $BB5A
    jr printchar 

    jp $				    ; Loop forever

string 		defb 'Hello, World!'		; The string to print
string_end 	equ $

    SAVEAMSDOS "helloworld.cpc", start, $-start, start