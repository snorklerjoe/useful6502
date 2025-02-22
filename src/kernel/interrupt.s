; ---------------------------------------------------------------------------
; interrupt.s
; ---------------------------------------------------------------------------
;
; Defines ISRs.
;

.export   _irq_int, _nmi_int, _irq_brk

.segment  "CODE"


; ---------------------------------------------------------------------------
; NMI interrupt service routine
; ---------------------------------------------------------------------------
_nmi_int:  RTI

; ---------------------------------------------------------------------------
; IRQ interrupt service routine
; ---------------------------------------------------------------------------
_irq_int:  SEI
           PHA                  ; Save accumulator
           TXA                  ; Save X register
           PHA
           TSX
           INX                    ; Increment X so it points to the status
           INX                    ;   register value saved on the stack
           LDA $100,X             ; Load status register contents
           AND #$10               ; Isolate B status bit
           BNE _irq_brk           ; If B = 1, BRK detected

irq:       PLA
           TAX                    ; Restore X register contents
           PLA                    ; Restore accumulator
           CLI
           RTI                    ; Return from all IRQ interrupts


; ---------------------------------------------------------------------------
; BRK interrupt service routine
; ---------------------------------------------------------------------------
_irq_brk:  CLI
           RTI
