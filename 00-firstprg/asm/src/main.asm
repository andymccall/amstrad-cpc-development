;
; Title:		    01-firstprg - Assembler Example
;
; Description:      A program that does nothing for the Commander X16
;                   intended to check your environment works with no
;                   issues
; Author:		    Andy McCall, mailme@andymccall.co.uk
;
; Created:		    2024-08-12 @ 20:01
; Last Updated:	    2024-08-12 @ 20:01
;
; Modinfo:
;
;
	DEVICE AMSTRADCPC6128
    
    org $1200

start:
    jp $				    ; Loop forever

    SAVEAMSDOS "firstprg.cpc", start, $-start, start