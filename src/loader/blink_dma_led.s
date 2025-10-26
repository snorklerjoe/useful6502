;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Blinky code for the 6502 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; This code is an example that can be loaded to the 65c02
; It requires no low-mem, stack, etc.
;
; The DMA_ACCESS LED should blink once, twice, thrice, four times, and the cycle will repeat.
;
; Compile & run with
; ca65 blink_dma_led.s -o blink_dma_led.o && ld65 -C loader6502.cfg -o blink_dma_led blink_dma_led.o && sudo python ../programmer/load_dma_and_run.py ./blink_dma_led
;


; 65c02 instructions enabled
.PC02

; Interrupt vectors
.SEGMENT "VECTORS"
    .word entry     ; NMI Vector
    .word entry     ; RESET Vector
    .word entry     ; IRQ/BRK Vector

; Code
.CODE

entry:
    ; Initialize the 6502
    SEI
    CLD
    ;LDX #$FF  ; No need to initialize the stack pointer if we don't use the stack
    ;TXS

loop:
    LDA $00
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

    LDA $00
    NOP
    LDA $00
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

    LDA $00
    NOP
    LDA $00
    NOP
    LDA $00
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

    LDA $00
    NOP
    LDA $00
    NOP
    LDA $00
    NOP
    LDA $00
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

    jmp loop
    ; BRA loop

