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
    // Set data bus pins as digital
    ANSELF = 0x00;
    // Set control pins to safe states
    LATDbits.LATD7 = 1;  // ~OE high (disabled)
    LATDbits.LATD6 = 1;  // R/~W high (read mode)
    LATDbits.LATD5 = 1;  // ~CE high (deselected)
    LATDbits.LATD4 = 1;  // BUSY high (not busy - slave device input)
    
    // Clear address bus
    LATC = 0x00;       // A0-A7
    LATE &= 0xF8;      // Clear RE0, RE1, RE2 (A10, A9, A8)
    NOP();
    NOP();  // Small delay for latch to settle

    // Set address bus pins as outputs
    TRISC = 0x00;       // A0-A7
    TRISE &= 0xF8;      // RE0, RE1, RE2 as outputs (A10, A9, A8)

    // Set control pins as outputs
    TRISDbits.TRISD7 = 0; // ~OE
    TRISDbits.TRISD6 = 0; // R/~W
    TRISDbits.TRISD5 = 0; // ~CE
    TRISDbits.TRISD4 = 0; // BUSY (output from PIC, input to SRAM slave)
    
    // Initialize CPU control pins
    // Ensure digital mode (clear ANSELA bits 0 and 1)
    ANSELA &= 0xFC;        // Clear ANSA0 and ANSA1 (bits 0 and 1)
    
    // Set outputs before configuring as outputs
    LATAbits.LATA0 = 1;    // IRQ high (not asserted)
    LATAbits.LATA1 = 0;    // RESB low (in reset)
    TRISAbits.TRISA0 = 0;  // IRQ as output
    TRISAbits.TRISA1 = 0;  // RESB as output
}

/**
 * Set SRAM address on address bus
 * @param addr 11-bit address (0-2047)
 */
static void SRAM_set_address(unsigned int addr) {
    // Mask to 11 bits for 2kiB addressing
    addr &= 0x07FF;
    
    // Set A0-A7 on PORTC
    LATC = addr & 0xFF;
    
    // Set A8-A10 on PORTE (bits 0, 1, 2)
    LATE = (LATE & 0xF8) | ((addr >> 8) & 0x07);
    NOP();  // Small delay for address setup
}

/**
 * Read a byte from SRAM
 * @param addr Address to read from (0-2047)
 * @return Data byte read
 */
unsigned char SRAM_read(unsigned int addr) {
    unsigned char data;
    
    // Set read mode (should already be set)
    LATDbits.LATD6 = 1;  // R/~W high
    LATDbits.LATD7 = 1;  // ~OE high
    LATDbits.LATD5 = 1;  // ~CE high

    // Ensure data bus is TRULY high-Z (input)
    ANSELF = 0x00;  // Ensure digital mode
    LATF = 0x00;    // Clear output latch
    TRISF = 0xFF;   // Set as input
    NOP();          // Give time for bus to float

    // Set address
    SRAM_set_address(addr);
    
    // Select chip
    LATDbits.LATD5 = 0;  // ~CE low
    NOP();
    NOP();  // CE to output delay (~60ns)

    // Enable output
    LATDbits.LATD7 = 0;  // ~OE low
    
    // Wait for SRAM to drive bus
    NOP();
    NOP();  // Output enable delay (~60ns)
    
    // Read data
    data = PORTF;
    
    // Disable output
    LATDbits.LATD7 = 1;  // ~OE high
    NOP();
    
    // Park just below interrupt vectors
    SRAM_set_address(0xFFF3);

    SRAM_deselect();
    return data;
}

/**
 * Write a byte to SRAM
 * @param addr Address to write to (0-2047)
 * @param data Data byte to write
 */
void SRAM_write(unsigned int addr, unsigned char data) {
    // Ensure ~OE is high before changing data direction
    LATDbits.LATD7 = 1;  // ~OE high
    LATDbits.LATD6 = 1;  // R/~W high initially
    
    // Set address
    SRAM_set_address(addr);
    NOP();  // Address setup time
    
    // Select chip (keep low for entire write cycle)
    LATDbits.LATD5 = 0;  // ~CE low
    NOP();  // CE setup time
    
    // Set data bus to output
    TRISF = 0x00;
    
    // Put data on bus
    LATF = data;
    NOP();  // Data setup time before write pulse
    
    // Write pulse: R/~W low then high
    LATDbits.LATD6 = 0;  // R/~W low (start write)
    NOP();
    NOP();  // Write pulse width (~60ns)
    LATDbits.LATD6 = 1;  // R/~W high (end write)
    
    NOP();  // Data hold time
    
    // Deselect chip
    LATDbits.LATD5 = 1;  // ~CE high
    
    // Set data bus back to high-Z
    TRISF = 0xFF;
    
    // Park just below interrupt vectors
    SRAM_set_address(0xFFF3);

    SRAM_deselect();
}

// Write 'len' bytes from 'data' to SRAM starting at 'addr'
int SRAM_write_bytes(uint32_t addr, int len, const uint8_t* data) {
    // Ensure ~OE is high before changing data direction
    LATDbits.LATD7 = 1;  // ~OE high
    LATDbits.LATD6 = 1;  // R/~W high initially
    
    // Set data bus to output
    TRISF = 0x00;

    int stop = addr+len;
    for(int addri = addr; addri < stop; addri++) {
        // Set address
        SRAM_set_address(addri);
        NOP();  // Address setup time
        
        // Select chip
        LATDbits.LATD5 = 0;  // ~CE low
        NOP();  // CE setup time
        
        // Put data on bus
        LATF = *data;
        NOP();  // Data setup time before write pulse
        
        // Write pulse: R/~W low then high
        LATDbits.LATD6 = 0;  // R/~W low (start write)
        NOP();
        NOP();  // Write pulse width (~60ns)
        LATDbits.LATD6 = 1;  // R/~W high (end write)
        
        NOP();  // Data hold time
        
        // Deselect chip
        LATDbits.LATD5 = 1;  // ~CE high
        
        data++;  // Go to the next loc in memory next round
        NOP();
        NOP();  // Inter-write delay (~60ns)
    }    
    // Set data bus back to high-Z
    TRISF = 0xFF;
    
    // Park just below interrupt vectors
    SRAM_set_address(0xFFF3);
    
    SRAM_deselect();
    return len;
}

// Read 'len' bytes from SRAM starting at 'addr' into 'data'
int SRAM_read_bytes(uint32_t addr, int len, uint8_t* data) {
    // Set read mode (should already be set)
    LATDbits.LATD6 = 1;  // R/~W high
    LATDbits.LATD7 = 1;  // ~OE high
    LATDbits.LATD5 = 1;  // ~CE high

    // Ensure data bus is TRULY high-Z (input)
    ANSELF = 0x00;  // Ensure digital mode
    LATF = 0x00;    // Clear output latch
    TRISF = 0xFF;   // Set as input
    NOP();          // Give time for bus to float

    // Select chip
    LATDbits.LATD5 = 0;  // ~CE low
    NOP();
    NOP();  // CE to output delay (~60ns)

    // Enable output
    LATDbits.LATD7 = 0;  // ~OE low
    
    int stop = addr+len;
    for(int addri = addr; addri < stop; addri++) {
        // Set address
        SRAM_set_address(addri);
        NOP();
        NOP();  // Wait for SRAM to drive bus (~60ns)
        
        // Read data
        *data = PORTF;
        data++;  // Go to the next loc in memory next round
    }

    // Disable output
    LATDbits.LATD7 = 1;  // ~OE high
    NOP();
    
    // Park just below interrupt vectors
    SRAM_set_address(0xFFF3);

    SRAM_deselect();
    return len;
}

/**
 * Deselect SRAM chip and return to safe state
 */
void SRAM_deselect(void) {
    LATDbits.LATD5 = 1;  // ~CE high (deselected)

    // Ensure data bus is high-Z
    TRISF = 0xFF;
    
    // Disable all control signals
    LATDbits.LATD7 = 1;  // ~OE high
    LATDbits.LATD6 = 1;  // R/~W high (read mode)
}

/********************
 * 6502 CPU Control *
 ********************/

/**
 * Assert reset on 65c02 CPU (pull RESB low)
 */
void cpu6502_reset(void) {
    LATAbits.LATA1 = 0;  // RESB low
}

/**
 * Release reset on 65c02 CPU (pull RESB high)
 */
void cpu6502_unreset(void) {
    LATAbits.LATA1 = 1;  // RESB high
}

/**
 * Assert interrupt on 65c02 CPU (pull IRQ low)
 */
void cpu6502_interrupt(void) {
    LATAbits.LATA0 = 0;  // IRQ low
}

/**
 * Release interrupt on 65c02 CPU (pull IRQ high)
 */
void cpu6502_uninterrupt(void) {
    LATAbits.LATA0 = 1;  // IRQ high
}
