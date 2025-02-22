; ---------------------------------------------------------------------------
; zpkernel.s
; ---------------------------------------------------------------------------
;
; Defines zero-page ram locations used by the kernel.
; We have exactly 0xC0 bytes of zero-page ram to work with here.
;

.export CUR_PID, CUR_QUANTUM, CUR_STATE

.segment  "ZP_KERNEL"

CUR_PID: .byte $00
CUR_QUANTUM: .byte $00
CUR_STATE: .byte $00



