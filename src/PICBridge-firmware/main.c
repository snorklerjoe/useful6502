/*  main.c
 * 
 *  This is a simple shell, with one-character commands (executing on \n). It is not meant for humans, but rather for my
 * programmer python script. But also, since I want to be able to debug stuff manually, here's the rundown:
 * 
 * Ex Cmd         Function & use
 * =======      ===================
 * !            Panic: throws the 6502 into reset, disables everything
 * Wdeadabcdef1 Writes 0xabcdef1 to location 0xdead in EEPROM (hex string may be as long as intended, so long as it is a multiple of two chars for 8 bits)
 * Rdead0006    Reads 0x6 bytes starting at 0xDEAD in EEPROM (reads out hex values)
 * w0abdeadbeef Writes 0xDEADBEEF into addr 0x0ab in SRAM
 * r0ab004      Reads 0x004 bytes from SRAM starting at 0x0ab
 * O            Un-resets the 6502
 * -            Resets the 6502
 */

#define COMM_VERSION "0.0"

#define assert(val, message) if(!val) {uart_puts(message); while(1);}

#include "mcc_generated_files/system/system.h"
#include "hardware.h"
#include <string.h>
#include "m95_eeprom.h"
#include "conio.h"

volatile char rx_buffer[70];
volatile char cmd_buffer[70];
volatile char eeprom_sram_io_buffer[64];
volatile uint8_t rx_index = 0;
volatile bool message_ready = false;

// Convert a single hex character to its value (0-15), or -1 if invalid
static int hex2val(char c) {
    if (c >= '0' && c <= '9') return c - '0';
    if (c >= 'A' && c <= 'F') return c - 'A' + 10;
    if (c >= 'a' && c <= 'f') return c - 'a' + 10;
    return -1;
}

// Convert a hex string to a byte array
static int hexstr_to_bytes(const char* str, int len, uint8_t* out, int maxout) {
    int bytes = 0;
    for(int i=0; i<len && bytes<maxout; i+=2) {
        int hi = hex2val(str[i]);
        int lo = (i+1 < len) ? hex2val(str[i+1]) : -1;
        if(hi<0 || lo<0) break;
        out[bytes++] = (hi<<4) | lo;
    }
    return bytes;
}

// Convert a hex string to an integer (up to 4 digits)
static unsigned int hexstr_to_uint(const char* str, int digits) {
    unsigned int val = 0;
    for(int i=0; i<digits; i++) {
        int v = hex2val(str[i]);
        if(v<0) break;
        val = (val<<4) | v;
    }
    return val;
}

// UART Interrupt Routine - keep it simple and fast!
void onUartInput(void) {
    if(EUSART2_IsRxReady()) {
        char received = EUSART2_Read();
        
        // Store character in buffer
        if(rx_index < 63) {
            rx_buffer[rx_index++] = received;
            
            // Check for end of message
            if(received == '\n' || received == '\r') {
                rx_buffer[rx_index] = '\0';  // Null terminate
                message_ready = true;
                rx_index = 0;  // Reset for next message
            }
        } else {
            // Buffer overflow - reset
            rx_index = 0;
        }
    }
}

/*
    Main application
*/

int main(void)
{
    //LATAbits.LATA4 = 1;    // Start with CS high for my scope trigger to do what I want...

    SYSTEM_Initialize();
    SRAM_init();
    INTERRUPT_GlobalInterruptEnable(); 
    INTERRUPT_PeripheralInterruptEnable(); 
    cpu6502_reset();
    cpu6502_uninterrupt();

    EUSART2_RxCompleteCallbackRegister(onUartInput);
    EUSART2_ReceiveInterruptEnable();

    uart_puts("\n\r\n\r\n\r=================================================\n\rBasic i/o INITIALIZED\n\r");

    // Configure RA3 as output
    TRISAbits.TRISA3 = 0;  // Set RA3 as output
    LATAbits.LATA3 = 1;    // Initialize RA3 high

    char status = M95_init();
    if(status < 0) {
        uart_puts("Err initializing EEPROM... :(\n\r");
        while(1);  // Stall forevermore
    }
    uint8_t sram_buf[16];
    SRAM_write(0x000, 0x00);
    assert(SRAM_read(0) == 0x00, "Error writing to 0x000 of SRAM")
    SRAM_write(0x000, 0xDD);
    assert(SRAM_read(0) == 0xDD, "Error writing to 0x000 of SRAM")
    SRAM_write(0xF00, 0x00);
    assert(SRAM_read(0xF00) == 0x00, "Error writing to 0xF00 of SRAM")
    SRAM_write(0xF00, 0xAF);
    assert(SRAM_read(0xF00) == 0xAF, "Error writing to 0xF00 of SRAM")
    

    uart_puts("Init success. :)\n\rUSEFUL 6502 COPROCESSOR CONTROL SHELL by JOSEPH R FREESTON");
    uart_puts("\n\rVersion: ");
    uart_puts(COMM_VERSION);
    uart_puts("\n\r");

    while (1) {
        // Check for received UART messages
        if(message_ready) {
            uart_puts((char*)rx_buffer);
            uart_puts("\n\r");
            strcpy(cmd_buffer, rx_buffer);
            message_ready = false;  // Clear the flag

            int len = strlen(cmd_buffer);
            if(len == 0) continue;

            // EEPROM write: Wdeadabcdef1
            if(cmd_buffer[0] == 'W') {
                if(len < 5) { uart_puts("Bad EEPROM write\n\r"); continue; }
                unsigned int addr = hexstr_to_uint(cmd_buffer+1, 4);
                int datalen = len - 5;
                if(datalen <= 0) { uart_puts("No data for EEPROM write\n\r"); continue; }
                int bytes = hexstr_to_bytes(cmd_buffer+5, datalen, eeprom_sram_io_buffer, sizeof(eeprom_sram_io_buffer));
                char retval = M95_write_bytes(addr, bytes, eeprom_sram_io_buffer);
                if(retval < 0) {
                    uart_puts("Err Writing\n\rM95_write_bytes returned ");
                    putch_hex(retval);
                    uart_puts(".\n\r");
                } else {
                    uart_puts("Wrote something: ");
                    putch_hex(retval);
                    uart_puts(" bytes.\n\r");
                }
            }
            // EEPROM read: Rdead0006
            else if(cmd_buffer[0] == 'R') {
                if(len < 9) { uart_puts("Bad EEPROM read\n\r"); continue; }
                unsigned int addr = hexstr_to_uint(cmd_buffer+1, 4);
                unsigned int nbytes = hexstr_to_uint(cmd_buffer+5, 4);
                if(nbytes > sizeof(eeprom_sram_io_buffer)) nbytes = sizeof(eeprom_sram_io_buffer);
                if(M95_read_bytes(addr, nbytes, eeprom_sram_io_buffer) < 0) {
                    uart_puts("Err Reading\n\r");
                } else {
                    uart_puts("Read something:\n\r");
                    for(int i = 0; i < nbytes; i++) {
                        putch_hex((unsigned char)eeprom_sram_io_buffer[i]);
                        uart_putc(' ');
                    }
                    uart_putc('\n\r');
                }
            }
            // SRAM write: w0abdeadbeef
            else if(cmd_buffer[0] == 'w') {
                if(len < 3) { uart_puts("Bad SRAM write\n\r"); continue; }
                unsigned int addr = hexstr_to_uint(cmd_buffer+1, 3);
                int datalen = len - 3;
                if(datalen <= 0) { uart_puts("No data for SRAM write\n\r"); continue; }
                if(datalen > 64) { uart_puts("SRAM write too long\n\r"); continue; } // Prevent buffer overrun
                if(datalen % 2 != 1) { uart_puts("Odd number of hex digits\n\r"); continue; } // Prevent odd hex string
                int bytes = hexstr_to_bytes(cmd_buffer+4, datalen, eeprom_sram_io_buffer, sizeof(eeprom_sram_io_buffer));
                uart_puts("About to write...");
                int retval = SRAM_write_bytes(addr, bytes, eeprom_sram_io_buffer);
                if(retval < 0) {
                    uart_puts("Err Writing SRAM\n\r");
                } else {
                    uart_puts("SRAM write ok\n\r");
                }
            }
            // SRAM read: r0ab004
            else if(cmd_buffer[0] == 'r') {
                if(len < 7) { uart_puts("Bad SRAM read\n\r"); continue; }
                unsigned int addr = hexstr_to_uint(cmd_buffer+1, 3);
                unsigned int nbytes = hexstr_to_uint(cmd_buffer+4, 3);
                if(nbytes > sizeof(eeprom_sram_io_buffer)) nbytes = sizeof(eeprom_sram_io_buffer);
                if(SRAM_read_bytes(addr, nbytes, eeprom_sram_io_buffer) < 0) {
                    uart_puts("Err Reading SRAM\n\r");
                } else {
                    uart_puts("SRAM: ");
                    for(int i = 0; i < nbytes; i++) {
                        putch_hex(eeprom_sram_io_buffer[i]);
                        uart_putc(' ');
                    }
                    uart_putc('\n\r');
                }
            }
            // 6502 un-reset: O
            else if(cmd_buffer[0] == 'O') {
                cpu6502_unreset();
                uart_puts("6502 un-reset\n\r");
            }
            // 6502 reset: -
            else if(cmd_buffer[0] == '-') {
                cpu6502_reset();
                uart_puts("6502 reset\n\r");
            }
            // 6502 interrupt
            else if(cmd_buffer[0] == 'I') {
                cpu6502_interrupt();
                uart_puts("6502 interrupt\n\r");
            }
            // 6502 un-interrupt
            else if(cmd_buffer[0] == 'i') {
                cpu6502_uninterrupt();
                uart_puts("6502 un-interrupt\n\r");
            }
        }
    }
}