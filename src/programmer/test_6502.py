""" A script to load a test program and point the 6502 to it.

Test program
================
        SEI
        CLD
L01:    NOP
        CLC
        LDA $00
        BCC L01

Hex: 78 D8 EA A5 00 18 90 FC
"""

from u6_comm import PICBridge


machine_code = b"\x78\xD8\xEA\xA5\x00\x18\x90\xFC"

with PICBridge('/dev/ttyUSB0') as pb:
    # Write machine code into RAM
    # Code will live at $F810 on the 6502, which is $0010 on the DP SRAM
    pb.sram_write(0x10, machine_code)
    
    # Write vectors
    pb.sram_write(0x7FA, b"\xF8\x10\xF8\x10\xF8\x10")

    print("6502 is reset. Hit return to allow it to begin running, but cycle the clock a few times first.")
    input()

    # Allow the 6502 to turn on
    pb.cpu_unreset()

    print("6502 is un-reset. Hit return to put back into reset state")
    input()

    pb.cpu_reset()