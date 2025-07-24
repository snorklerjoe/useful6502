#ifndef __CONIO_H
#define __CONIO_H

#include "hardware.h"
#include <string.h>
#include "mcc_generated_files/system/system.h"

#define putc(c) uart_putc(c)
#define puts(c) uart_puts(c)

// Function declarations
void uart_putc(char c);
void uart_puts(char *s);
void putch_hex(char byte);

#endif