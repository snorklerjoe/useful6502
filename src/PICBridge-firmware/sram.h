#ifndef SRAM_H
#define SRAM_H

#include <stdint.h>

/* These are control functions for the CY7C146-25JC dual-port SRAM.
 * Datasheet: https://www.mouser.com/datasheet/2/100/cypress_CY7C132_136_136A_142_146-1161371.pdf
 *
 * SUPER IMPORTANT:
 * -----------------
 * It is, perhaps, possible, with the hardware configuration, for improper code here to BREAK the dual-port SRAM.
 * The PIC needs to handle the arbitration of the "bus" that goes between the PIC and the SRAM.
 * The initialization code, before setting anything to no-longer Hi-Z, should be sure that the ~OE pin is HIGH so
 * that the SRAM goes to Hi-Z.
 */

/* It is wired as follows:
 * 
 * R/~W  -  RD6
 * ~OE   -  RD7
 * ~BUSY -  RD5
 * 
 * A0-A7   - DC0-RC7
 * A8-A10  - RE2-RE0
 * D0-D7   - RF0-RF7
 */


#define SRAM_WEN() 
#define SRAM_SETADDR(addr) 

// Initializes the SRAM.
// Run this immediately after System_init()!
void SRAM_init();

// Write 'len' bytes from 'data' to SRAM starting at 'addr'
int SRAM_write_bytes(uint32_t addr, int len, const uint8_t* data);

// Read 'len' bytes from SRAM starting at 'addr' into 'data'
int SRAM_read_bytes(uint32_t addr, int len, uint8_t* data);

#endif // SRAM_H
