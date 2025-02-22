; ---------------------------------------------------------------------------
; ioport.s
; ---------------------------------------------------------------------------
;
; Defines the hardware io ports.
; These provide the CPU's interface to the rest of the computer and any peripherals.
;

.export PORTA, PORTB, PORTC, PORTD, PORTE, PORTF, PORTG, PORTH, PORTI, PORTJ
.export HWSTATUS, HWBANKA, HWBANKB

.segment  "ZP_PORTS"

PORTA: .byte   $00
PORTB: .byte   $00
PORTC: .byte   $00
PORTD: .byte   $00
PORTE: .byte   $00
PORTF: .byte   $00
PORTG: .byte   $00
PORTH: .byte   $00
PORTI: .byte   $00
PORTJ: .byte   $00

HWSTATUS: .byte $00
WDTIMER:  .byte  $00
NMITIMER: .byte  $00
HWBANKA:  .byte  $00
HWBANKB:  .byte  $00

; ---------------------------------------------------------------------------
; Why so many ports?
; ------------------
; Example port usages:
; --------------------
; Keyboard
; Screen
; SD card 1
; SD card 2
; ESP32, command
; ESP32, data
; GPIO
; GPIO Control
; Parallel port
; UART
; SPI
; 
; Hw status
; bank a
; bank b
; 
