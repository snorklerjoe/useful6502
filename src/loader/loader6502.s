;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Loader code for the 6502 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; This code will take a 512-byte chunk of code out of
; $F900 to $FB00 and into some location.
;

.PC02
.CODE

    ; Initialize the 6502
    SEI
    CLD
    ;LDX #$FF  ; No need to initialize the stack pointer if we don't use the stack
    ;TXS

    ; Load the first 256 bytes
    LDY #0
loop1:
    LDA $F900,Y
    STA $FFFF,Y
    INY
    BNE loop1

    ; Load the second 256 bytes
    LDY #0
loop2:
    LDA $FA00,Y
    STA $FFFF,Y
    INY
    BNE loop2

    ; Tell the PIC we're done
    STY $F810

    ; Stall
    WAI
done:
    BRA done
