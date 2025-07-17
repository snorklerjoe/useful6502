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

void putc(char c) {
    while(!EUSART2_IsTxReady());
    EUSART2_Write(c);
}

void puts(char *s) {
    while(*s != 0)
        putc(*(s++));
}
// Global buffer for received characters
volatile char rx_buffer[64];
volatile uint8_t rx_index = 0;
volatile bool message_ready = false;

// UART Interrupt Routine - keep it simple and fast!
void onUartInput(void) {
    LATAbits.LATA3 = !LATAbits.LATA3;  // Just toggle LED on any RX
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
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable(); 
    INTERRUPT_PeripheralInterruptEnable(); 
    cpu6502_reset();
    cpu6502_uninterrupt();

    EUSART2_RxCompleteCallbackRegister(onUartInput);
    EUSART2_ReceiveInterruptEnable();

    // Configure RA3 as output
    TRISAbits.TRISA3 = 0;  // Set RA3 as output
    LATAbits.LATA3 = 0;    // Initialize RA3 low

    char msg[] = "Hello World\r\n";
    while (1)
    {
        // Toggle RA3 high
        LATAbits.LATA3 = 1;
        __delay_ms(1000); // Wait 1 second before repeating

        puts(msg);

        // Toggle RA3 low
        LATAbits.LATA3 = 0;
        __delay_ms(1000); // Wait 1 second before repeating

        // Check for received UART messages
        if(message_ready) {
            puts("Received: ");
            puts((char*)rx_buffer);
            puts("\r\n");
            message_ready = false;  // Clear the flag
        }
    }
}