#ifndef SRAM_H
#define SRAM_H

#include <stdint.h>

// Write 'len' bytes from 'data' to SRAM starting at 'addr'
int SRAM_write_bytes(uint32_t addr, int len, const uint8_t* data);

// Read 'len' bytes from SRAM starting at 'addr' into 'data'
int SRAM_read_bytes(uint32_t addr, int len, uint8_t* data);

#endif // SRAM_H
