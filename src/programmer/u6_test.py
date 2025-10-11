"""Tests u6_comm"""

from u6_comm import PICBridge
import os

big_chunk_of_data = bytes(os.urandom(512))  # 512 random bytes

with PICBridge('/dev/ttyUSB0') as pb:
    print("Testing SRAM...")
    # Write binary data to SRAM
    pb.sram_write(0x000, b'\xDE\xAD\xBE\xEF')    
    # Read it back
    data = pb.sram_read(0x000, 4)
    print(data)

    # Write big bin data
    print(pb.sram_write(0x100, big_chunk_of_data))
    print("... bytes written.\n")
    read_data = pb.sram_read(0x100, len(big_chunk_of_data))
    assert read_data == big_chunk_of_data, "Issue with SRAM"

    # Test EEPROM
    print("Testing EEPROM...")

    # Write big bin data
    pb.eeprom_write(0x100, big_chunk_of_data)
    read_data = pb.eeprom_read(0x100, len(big_chunk_of_data))
    assert read_data == big_chunk_of_data, "Issue with EEPROM"

