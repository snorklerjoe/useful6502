; ---------------------------------------------------------------------------
; proc.inc
; ---------------------------------------------------------------------------
;
; Defines the process struct and macros for associated actions.
;

.include "util.incl"

.struct Process
    pid: .word
    status: .byte    
    
    bank_a: .byte
    bank_b: .byte
    bank_c: .byte
    bank_root: .byte

    regs: .tag CPUReg
    pc: .word
.endstruct
