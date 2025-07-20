; ---------------------------------------------------------------------------
; hardware.inc
; ---------------------------------------------------------------------------
;
; Defines all registers and low-level hardware interface code.
;
; This includes:
;  - VIA registers
;  - Character i/o
;  - Bank switching
;  - DMA control
;

; --- VIA (65C22) Register Addresses ---
.define VIA_PORTB   $F800 ; Port B data register
.define VIA_PORTA   $F801 ; Port A data register
.define VIA_DDRB    $F802 ; Port B data direction register
.define VIA_DDRA    $F803 ; Port A data direction register
.define VIA_T1CL    $F804 ; Timer 1 counter low
.define VIA_T1CH    $F805 ; Timer 1 counter high
.define VIA_T1LL    $F806 ; Timer 1 latch low
.define VIA_T1LH    $F807 ; Timer 1 latch high
.define VIA_T2CL    $F808 ; Timer 2 counter low
.define VIA_T2CH    $F809 ; Timer 2 counter high
.define VIA_SR      $F80A ; Shift register
.define VIA_ACR     $F80B ; Auxiliary control register
.define VIA_PCR     $F80C ; Peripheral control register
.define VIA_IFR     $F80D ; Interrupt flag register
.define VIA_IER     $F80E ; Interrupt enable register
.define VIA_PORTA_NH $F80F ; PORTA without handshaking

; --- Hardware Registers ---
.define BANK_REG_A $00
.define BANK_REG_B $01
.define BANK_REG_C $02
.define LCD_OUT_D  $03
.define ROOT_BANK  $04

; --- PORTB Bit Masks ---
.define PB_MASK_LCDSEL  %00000011   ; Character LCD output select
.define PB_MASK_LCDEN   %00000100   ; Active-low character LCD output enable
.define PB_MASK_LCDRS   %00001000   ; Character LCD register select
.define PB_MASK_UMINH   %00010000   ; Active-low user-mode inhibit
.define PB_MASK_DMACMD  %00100000   ; Active-low DMA command (triggers PIC interrupt)
.define PB_MASK_WRITBANKEN %01000000  ; Active-low bankreg write enable
.define PB_MASK_NMITIM  %10000000   ; NMI timer pin

.define PB_INIT         %11100100   ; PORTB initialization value


;  VIA initialization macro
;  Interrupts should be disabled before this, so that it can run atomically.
;       DIRTIES A
.macro via_init
    ; Set PORTA,B initial states
    lda #$00
    sta VIA_PORTA
    lda #PB_INIT
    sta VIA_PORTB

    ; Set data direction registers
    lda #$00  ; Set PORTA to all inputs (PS/2 keyboard interface)
    sta VIA_DDRA
    lda #$FF  ; Set PORTB to all outputs
    sta VIA_DDRB

    ; Set handshaking
    lda #$A0  ; CA2 pulse mode
    sta VIA_PCR

    ; Set PORTA data available interrupt
    lda #$81
    sta VIA_IER

    ; Setup PB timer
    lda #$7F  ; Timer in one-shot mode
    sta VIA_ACR
.endmacro

; Macro to start timer rolling to do an NMI after the quantum
;       DIRTIES A
.macro nmi_timerset
    lda #<k_quantum
    sta VIA_T1CL
    lda #>k_quantum
    sta VIA_T1CH
.endmacro

; Macro to run before a bank register write
;       DIRTIES A
.macro pre_bankwrite
    lda VIA_PORTB
    and #($FF ^ PB_MASK_WRITBANKEN)
    sta VIA_PORTB
.endmacro

; Macro to run after a bank register write
;       DIRTIES A
.macro post_bankwrite
    lda VIA_PORTB
    ora #PB_MASK_WRITBANKEN
    sta VIA_PORTB
.endmacro

; Macro to inhibit user mode 
;       DIRTIES A
.macro uminh
    lda VIA_PORTB
    ora #PB_MASK_UMINH
    sta VIA_PORTB
.endmacro

; Macro to enable user mode on the next access to userspace memory.
; Use this macro immediately prior to jumping back to user memory.
;   Any use of the stack following this call will immediately force user mode,
;   so the jump vector must be stored in resident kerel memory.
;       DIRTIES A
.macro umen
    lda VIA_PORTB
    and #($FF ^ PB_MASK_UMINH)
    sta VIA_PORTB
.endmacro
