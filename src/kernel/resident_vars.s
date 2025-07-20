; ---------------------------------------------------------------------------
; resident_vars.s
; ---------------------------------------------------------------------------
;
; Defines variables to live in resident kernel memory
;

.include "util.incl"

.export k_keybuf, k_keybuf_index

.segment "KMEM"

k_keybuf_index:  .byte $00       ; offset to store next byte in
k_keybuf:       .res  16, $00    ; 16-byte keyboard input buffer

k_quantum: .word $0100           ; Period for NMI timer inerrupt

k_usrjmpvec: .word $FFFF         ; Jump vector back to userspace. Needs to not be on a page boundary.
                                 ; Should be set by the scheduler, so that an indirect jump may be used.

; Place for saving user code's registers during an interrupt.
k_usr_reg: .tag CPUReg

; 
