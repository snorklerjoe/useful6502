// Controls hardware functions, including SRAM and resetting the 65c02

/****************
 *   SRAM I/O   *
 ****************/

// Initializes SRAM such that CS is high (deselected), RW is in the read state, and OE is high (disabled), but the data pins are still HIGH Z
void SRAM_init(void);

// Read a byte from SRAM
unsigned char SRAM_read(unsigned int addr);

// Write a byte to SRAM
void SRAM_write(unsigned int addr, unsigned char data);

// Unselect the chip to free things up
void SRAM_deselect(void);

/********************
 * 6502 CPU Control *
 ********************/

// Control the 65c02 RESET line
void cpu6502_reset(void);
void cpu6502_unreset(void);

// Control the 65c02 interrupt line
void cpu6502_interrupt(void);
void cpu6502_uninterrupt(void);
