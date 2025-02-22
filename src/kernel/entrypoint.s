; ---------------------------------------------------------------------------
; entrypoint.s
; ---------------------------------------------------------------------------
;
; Kernel entrypoint, post-init.
;

.export _main
.import putchk

.segment "CODE"

message:
.byte "Hello, World!", 10, 0

_main:       ; Simple program to print hello world
    ldx #0
loop:
    lda message, x
    beq doneloop
    jsr putchk
    inx
    jmp loop

doneloop:
    jmp doneloop
