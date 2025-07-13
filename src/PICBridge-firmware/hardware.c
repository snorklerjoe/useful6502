#include "hardware.h"
#include "mcc_generated_files/system/system.h"

/****************
 *   SRAM I/O   *
 ****************/

/**
 * Initialize SRAM interface
 * Sets control pins to safe states and data bus to high-Z
 */
void SRAM_init(void) {
    // Set data bus (PORTF) to high-Z (inputs)
    TRISF = 0xFF;
    
    // Set control pins to safe states
    PORTDbits.RD7 = 1;  // ~OE high (disabled)
    PORTDbits.RD6 = 1;  // R/~W high (read mode)
    PORTDbits.RD5 = 1;  // ~CE high (deselected)
    
    // Clear address bus
    PORTC = 0x00;       // A0-A7
    PORTE &= 0xF8;      // Clear RE0, RE1, RE2 (A10, A9, A8)
}

/**
 * Set SRAM address on address bus
 * @param addr 11-bit address (0-2047)
 */
static void SRAM_set_address(unsigned int addr) {
    // Mask to 11 bits for 2kiB addressing
    addr &= 0x07FF;
    
    // Set A0-A7 on PORTC
    PORTC = addr & 0xFF;
    
    // Set A8-A10 on PORTE (bits 0, 1, 2)
    PORTE = (PORTE & 0xF8) | ((addr >> 8) & 0x07);
}

/**
 * Read a byte from SRAM
 * @param addr Address to read from (0-2047)
 * @return Data byte read
 */
unsigned char SRAM_read(unsigned int addr) {
    unsigned char data;
    
    // Set address
    SRAM_set_address(addr);
    
    // Ensure data bus is high-Z (input)
    TRISF = 0xFF;
    
    // Select chip
    PORTDbits.RD5 = 0;  // ~CE low
    
    // Set read mode (should already be set)
    PORTDbits.RD6 = 1;  // R/~W high
    
    // Enable output
    PORTDbits.RD7 = 0;  // ~OE low
    
    // Small delay for access time
    //__delay_us(1);
    
    // Read data
    data = PORTF;
    
    // Disable output
    PORTDbits.RD7 = 1;  // ~OE high
    
    // Note: ~CE stays low until SRAM_deselect() is called
    
    return data;
}

/**
 * Write a byte to SRAM
 * @param addr Address to write to (0-2047)
 * @param data Data byte to write
 */
void SRAM_write(unsigned int addr, unsigned char data) {
    // Set address
    SRAM_set_address(addr);
    
    // Ensure ~OE is high before changing data direction
    PORTDbits.RD7 = 1;  // ~OE high
    
    // Set data bus to output
    TRISF = 0x00;
    
    // Put data on bus
    PORTF = data;
    
    // Select chip
    PORTDbits.RD5 = 0;  // ~CE low
    
    // Set write mode
    PORTDbits.RD6 = 0;  // R/~W low
    
    // Write pulse (R/~W already low, just wait for write time)
    //__delay_us(1);
    
    // End write cycle
    PORTDbits.RD6 = 1;  // R/~W high (back to read mode)
    
    // Set data bus back to high-Z
    TRISF = 0xFF;
    
    // Note: ~CE stays low until SRAM_deselect() is called
}

/**
 * Deselect SRAM chip and return to safe state
 */
void SRAM_deselect(void) {
    // Ensure data bus is high-Z
    TRISF = 0xFF;
    
    // Disable all control signals
    PORTDbits.RD7 = 1;  // ~OE high
    PORTDbits.RD6 = 1;  // R/~W high (read mode)
    PORTDbits.RD5 = 1;  // ~CE high (deselected)
}

/********************
 * 6502 CPU Control *
 ********************/

/**
 * Assert reset on 65c02 CPU (pull RESB low)
 */
void cpu6502_reset(void) {
    PORTAbits.RA1 = 0;  // RESB low
}

/**
 * Release reset on 65c02 CPU (pull RESB high)
 */
void cpu6502_unreset(void) {
    PORTAbits.RA1 = 1;  // RESB high
}

/**
 * Assert interrupt on 65c02 CPU (pull IRQ low)
 */
void cpu6502_interrupt(void) {
    PORTAbits.RA0 = 0;  // IRQ low
}

/**
 * Release interrupt on 65c02 CPU (pull IRQ high)
 */
void cpu6502_uninterrupt(void) {
    PORTAbits.RA0 = 1;  // IRQ high
}
