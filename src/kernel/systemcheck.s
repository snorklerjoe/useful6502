; ---------------------------------------------------------------------------
; systemcheck.s
; ---------------------------------------------------------------------------
;
; This will test each piece of hardware.
;

.include "hardware.inc"

.export _init

.segment "KMEM"

_init:
    sei
    via_init
    pre_bankwrite
    lda #00
    sta BANK_REG_A
    sta BANK_REG_B
    sta BANK_REG_C
    sta LCD_OUT_D
    sta ROOT_BANK
    post_bankwrite
    cli
    nop
    nop
    nop
@endloop:
    jmp @endloop
