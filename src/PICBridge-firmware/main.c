 /*
 * MAIN Generated Driver File
 * 
 * @file main.c
 * 
 * @defgroup main MAIN
 * 
 * @brief This is the generated driver implementation file for the MAIN driver.
 *
 * @version MAIN Driver Version 1.0.2
 *
 * @version Package Version: 3.1.2
*/

/*
� [2025] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/
#include "mcc_generated_files/system/system.h"
#include "hardware.h"
#include <string.h>
#include "m95_eeprom.h"
#include "conio.h"

volatile char rx_buffer[64];
volatile char cmd_buffer[64];
volatile char eeprom_read_buffer[64];
volatile uint8_t rx_index = 0;
volatile bool message_ready = false;
static const char hex_char[17] = "0123456789ABCDEF";

// UART Interrupt Routine - keep it simple and fast!
void onUartInput(void) {
    //LATAbits. = !LATAbits.LATA3;  // Just toggle LED on any RX
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
    INTERRUPT_GlobalInterruptEnable(); 
    INTERRUPT_PeripheralInterruptEnable(); 
    cpu6502_reset();
    cpu6502_uninterrupt();

    EUSART2_RxCompleteCallbackRegister(onUartInput);
    EUSART2_ReceiveInterruptEnable();

    // Configure RA3 as output
    TRISAbits.TRISA3 = 0;  // Set RA3 as output
    LATAbits.LATA3 = 1;    // Initialize RA3 high

    char status = M95_init();
    if(status < 0) uart_puts("Err initializing EEPROM... :(\n");
    uart_puts("EEPROM INIT STATUS ");
    putch_hex(status);
    uart_putc('\n');

    char retval = M95_write_bytes(0x0100, 4, hex_char);
    if(retval < 0) {
        uart_puts("Err Writing\nM95_write_bytes returned ");
        putch_hex(retval);
        uart_puts(".\n");
    } else {
        uart_puts("Wrote something: ");
        putch_hex(retval);
        uart_puts(" bytes.\n");
    }

    __delay_us(100);

    if( M95_read_bytes(0x0100, 4, eeprom_read_buffer)
        < 0) {
        uart_puts("Err Reading\n");
    } else uart_puts("Read something:\n");
    puts(eeprom_read_buffer);
    uart_putc('\n');
    for(int i = 0; i < 4; i++) {
        unsigned char byte = eeprom_read_buffer[i];
        putch_hex(byte);
        putc(' ');
    }
    putc('\n');

    while (1) {
        // Check for received UART messages
        if(message_ready) {
            uart_puts((char*)rx_buffer);
            uart_puts("\r\n");
            strcpy(cmd_buffer, rx_buffer);
            message_ready = false;  // Clear the flag

            // Process the command
            int len = strlen(cmd_buffer);
            if(cmd_buffer[0] == 'W') {
                char retval = M95_write_bytes(0x0100, len - 1, cmd_buffer + 1);
                if(retval < 0) {
                    uart_puts("Err Writing\nM95_write_bytes returned ");
                    putch_hex(retval);
                    uart_puts(".\n");
                } else {
                    uart_puts("Wrote something: ");
                    putch_hex(retval);
                    uart_puts(" bytes.\n");
                }
            } else if(cmd_buffer[0] == 'R') {
                if( M95_read_bytes(0x0100, len - 1, eeprom_read_buffer)
                    < 0) {
                    uart_puts("Err Reading\n");
                } else uart_puts("Read something:\n");
                uart_puts(eeprom_read_buffer);
                uart_putc('\n');
                for(int i = 0; i < len; i++) {
                    unsigned char byte = eeprom_read_buffer[i];
                    putch_hex(byte);
                    uart_putc(' ');
                }
                uart_putc('\n');
            }
        }
    }
}