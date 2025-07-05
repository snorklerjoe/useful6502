; ---------------------------------------------------------------------------
; vectors.s
; ---------------------------------------------------------------------------
;
; Defines the hardware interrupt vector table.
;

.import    _reset
.import    _nmi_int, _irq_int

.segment  "VECTORS" ; Force placement into the VECTORS memory section.

; Initialize the important parts of the vector table with the appropriate symbols.
NMIV:
    .addr      _nmi_int    ; NMI interrupt vector: $FFFA (low byte) -  $FFFB (high byte)
RESV:
    .addr      _reset      ; Reset vector: $FFFC (low byte) -  $FFFD (high byte)
IRQV:
    .addr      _irq_int    ; IRQ/BRK interrupt vector: $FFFE (low byte) -  $FFFF (high byte)
