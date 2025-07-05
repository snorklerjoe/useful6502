; ---------------------------------------------------------------------------
; resident_vars.s
; ---------------------------------------------------------------------------
;
; Defines variables to live in resident kernel memory
;

.export k_keybuf, k_keybuf_size

.segment "KMEM"

k_keybuf_size:  .byte $00       ; offset to store next byte in
k_keybuf:       .res  16, $00   ; 16-byte keyboard input buffer

k_quantum: .word $0100          ; Period for NMI timer inerrupt