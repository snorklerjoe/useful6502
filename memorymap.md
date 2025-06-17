# Memory Map

Addr Range  |   Label   |   Usage   |   Switched    |   User Privs
------------|-----------|-----------|---------------|----------------
F810 - FFFF | DMA  | Mapping of a dual-port SRAM shared with the PIC16 peripheral coprocessor | NEVER | None
F800 - F80F | VIA | Mapping of VIA hardware registers | NEVER | None
C000 - F7FF | KMEM | General-purpose resident kernel memory. Use for top-level trap routines, ISRs, context switching routines, and whatever else will fit. | NEVER | None
8000 - BFFF | BP2 | Second banked page. Available to user processes upon request. Mapped over the same physical memory as BP1 if not in use. | YES | RWX
4000 - 7FFF | BP2 | Second banked page. Available to user processes upon request. Mapped over the same physical memory as BP1 if not in use. | YES | RWX
0000 - 3FFF | BP1 | First banked page. Not to be confused with "Zero page", which is a portion of this region. Bank 0 belongs to kernel; everything else here is for userspace. | YES | RWX

## Special Addresses

Addr | Label    | Usage
-----|----------|------
