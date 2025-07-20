; ---------------------------------------------------------------------------
; init.s
; ---------------------------------------------------------------------------
;
; This is the 6502 / hardware initialization code for the kernel
;

_init:
    ; Initialize the CPU
    ldx #$FF     ; Initialize the stack pointer
    txs
    sei
    cld

    ; Initialize the hardware
    uminh
    via_init

    ; Clear bank registers to kernel states
    pre_bankwrite
    lda #00
    sta BANK_REG_A
    sta BANK_REG_B
    sta BANK_REG_C
    sta LCD_OUT_D
    sta ROOT_BANK
    post_bankwrite
    nop

    cli
