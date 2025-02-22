; ---------------------------------------------------------------------------
; entrypoint.s
; ---------------------------------------------------------------------------
;
; Kernel entrypoint, post-init.
;

.export _main

.segment "CODE"

.byte "Hello, World!\n"

_main:       ; Simple program to increment $00
    inc $00
    nop
    jmp _main
