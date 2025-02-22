; ---------------------------------------------------------------------------
; putchk.s
; ---------------------------------------------------------------------------
;
; Basic putch routine for the kernel to use.
;

.import PORTA
.export putchk

putchk:
    sta PORTA
    rts
