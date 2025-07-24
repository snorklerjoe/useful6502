#include "conio.h"

const char hex_char[17] = "0123456789ABCDEF";

void uart_putc(char c) {
    while(!EUSART2_IsTxReady());
    EUSART2_Write(c);
}

void uart_puts(char *s) {
    while(*s != 0)
        putc(*(s++));
}

void putch_hex(char byte) {
    putc(hex_char[(byte & 0b11110000) >> 4]);
    putc(hex_char[byte & 0b00001111]);
}
