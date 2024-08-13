;
; Title:		     02-helloworld - Assembler Example
;
; Description:       A program that prints "c" to
;                    the console
; Author:		     Andy McCall, mailme@andymccall.co.uk
;
; Created:		     2024-08-12 @ 20:01
; Last Updated:	     2024-08-12 @ 20:01
;
; Modinfo:
;
;-----------------------------------------------------------

	DEVICE AMSTRADCPC6128
    
    org $1200

start:
    ld a,'c'
    call $BB5A

    jp $				    ; Loop forever

    SAVEAMSDOS "hellocha.cpc", start, $-start, start