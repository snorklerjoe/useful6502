# Memory Map

Addr Range  |   Label   |   Usage   |   Switched    |   User Privs
------------|-----------|-----------|---------------|----------------
FF00 - FFFF | kHighMem  | i/o and cpu vectors, kernel trap init routines | NEVER | RE (Exec via interrupt)
0300 - FEFF | uFreeRam  | text, stack, heap, bss, organized as seen fit for the individual process | BANK A | RWE
0200 - 02FF | uTrapBuf  | Buffer for syscall data | BANK B | RW
0100 - 01FF | uHwStack  | Hardware stack, per process | BANK B | RW
0080 - 00FF | uPageZero | User page-zero mem, for storing pointers, etc | BANK A | RW
0000 - 007F | kPageZero | bank switching and strategic kernel mem | NEVER | None

## Special Addresses

Addr | Label    | Usage
-----|----------|------
0000 | HWSTATUS | Hardware status register / usermode set
0001 | BANKA    | BANKA specifier
0002 | BANKB    | BANKB specifier
0003 | BBPCTL   | Bit-bang port control
0004 | BBIN     | Bit-bang input
