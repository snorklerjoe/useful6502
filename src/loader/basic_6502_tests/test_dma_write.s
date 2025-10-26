;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; DMA write test code for the 6502 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; This code is to ensure that data can successfully be written to the
; dual-port SRAM, to ensure the RW, OE, and CS pins are hooked up properly.
; Output is seen on the dma access indicator.
;
; If it works, one should see numbers represented as number of blinks.
; There should be 5, 4, 3, 2, 1, 15, 14, 13, 12, ..., 1, 15, 14, 13, ... blinks
;
; Compile & run with
; ca65 test_dma_write.s -o test_dma_write.o && ld65 -C ../loader6502.cfg -o test_dma_write test_dma_write.o && sudo python ../../programmer/load_dma_and_run.py ./test_dma_write
;


; 65c02 instructions enabled
.PC02

.macro blink
    LDA $00
.endmacro

.macro numberblink  ; Blink a number of times as per value in X
.local @blink_loop
.local @done_blinking
@blink_loop:
    CPX #$00
    BEQ @done_blinking

    blink
    NOP
    NOP
    NOP

    DEX
    BRA @blink_loop
@done_blinking:
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
.endmacro

; Interrupt vectors
.SEGMENT "VECTORS"
    .word entry     ; NMI Vector
    .word entry     ; RESET Vector
    .word entry     ; IRQ/BRK Vector

; Code
.CODE

num:
.byte $05

entry:
    ; Initialize the 6502
    SEI
    CLD
    ;LDX #$FF  ; No need to initialize the stack pointer if we don't use the stack
    ;TXS

loop:    
    LDX num
    numberblink

    DEC num

    LDA num
    CMP #$00
    BNE loop

    lda #$0F
    sta num

    jmp loop
    ; BRA loop

