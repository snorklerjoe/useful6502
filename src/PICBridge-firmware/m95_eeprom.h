#ifndef M95_EEPROM_H
#define M95_EEPROM_H

// All functions return -1 on fail, 0 on success, or another value

int M95_init(void);

int M95_read_bytes(int addr, int num_bytes, void* buf);
int M95_write_bytes(int addr, int num_bytes, void* buf);

int M95_read_id(int num_bytes, void* buf);
int M95_write_id(int num_bytes, void* buf);

#endif /* M95_EEPROM_H */