; ---------------------------------------------------------------------------
; interrupt.s
; ---------------------------------------------------------------------------
;
; Defines ISRs.
;

.include "hardware.inc"

.import k_keybuf, k_keybuf_size
.import _init
.export   _irq_int, _nmi_int, _irq_brk, _reset

.segment  "KMEM"


; ---------------------------------------------------------------------------
; NMI interrupt service routine
; ---------------------------------------------------------------------------
_nmi_int:  RTI

; ---------------------------------------------------------------------------
; IRQ interrupt service routine
; ---------------------------------------------------------------------------
_irq_int:   SEI
            PHA                  ; Save accumulator
            TXA                  ; Save X register
            PHA
            TSX
            INX                    ; Increment X so it points to the status
            INX                    ;   register value saved on the stack
            LDA $100,X             ; Load status register contents
            AND #$10               ; Isolate B status bit
            BNE _irq_brk           ; If B = 1, BRK detected

            ; Check VIA for keyboard-data-ready interrupt
            LDA VIA_IFR
            AND #$01       ; Isolate CA1 flag
            BNE _ca1_handler

_irqend:    PLA
            TAX                    ; Restore X register contents
            PLA                    ; Restore accumulator
            CLI
            RTI                    ; Return from all IRQ interrupts

; ---------------------------------------------------------------------------
; BRK interrupt service routine
; ---------------------------------------------------------------------------
_irq_brk:  CLI
           RTI

; ---------------------------------------------------------------------------
; RESB routine
; ---------------------------------------------------------------------------
_reset: ; Figure out if cold reset or warm fault
        jmp _init  ; Assume cold reset

; ---------------------------------------------------------------------------
; Keyboard data available routine
; ---------------------------------------------------------------------------
_ca1_handler:  ; Should pull the byte from PORTA and store in a key buffer
    lda VIA_PORTA  ; Read byte and clear interrupt
    ldx k_keybuf_size
    cpx #$0F            ; Make sure to avoid overflow
    beq _irqend         ;   (silently lose the byte)
    sta k_keybuf, X     ; Store byte in keyboard input buffer
    inc k_keybuf_size   ; Increment size
    ; wrap-up and return from the interrupt
    jmp _irqend
