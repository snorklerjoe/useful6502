""" U6Loader

A kernel image programmer for the Useful6502 Machine.

This program takes in a 64kiB binary file, splits it into 512B chunks, and sends them
to a PIC16 uC with the prooper firmware to load it into a dual-port SRAM and have
the 6502 copy the program into the proper region of memory.

USAGE:
u6loader.py [input file] [serial device]
"""

import os
import sys
import serial
import loader6502
import loader6502.loader6502

SER_BAUD_RATE = 115200
EXECINIT = 0xC000
JUMP_CODE = bytes(b"\x4C%c%c" % (EXECINIT %
                  256, EXECINIT // 256) + b'\x00' * (64 - 3))

# Handle command line arguments
if '-h' in sys.argv:
    print(
        f"USAGE: {sys.argv[0]} /path/to/input_file.bin [/dev/ser/device] [--dry-run]")
    print("     --dry-run : Execute all chunking steps without talking to the PIC")
    exit(0)

dry_run = '--dry-run' in sys.argv

if len(sys.argv) != 3:
    print("Invalid number of arguments. Specify `-h` for help.")
    exit(1)
inp_file = sys.argv[1]
ser_dev = sys.argv[2]
ser = None

# Make sure that loader6502 is all set
assert b'\x00\xef' in loader6502.loader_code(
    0xEF00), "Loader6502 doesn't seem to work properly."

# Check to ensure input file is properly formatted
inp_file_size = os.stat(inp_file).st_size
if inp_file_size != 64*2**10:
    print(
        f"Invalid input file.\nFile is {inp_file_size} bytes; expected {64*2**10} bytes.")
    exit(1)
if '.bin' not in inp_file:
    print("Warning: Input file extension is not `.bin`.")

# Open ser_device
if not dry_run:
    ser = serial.Serial(ser_dev, SER_BAUD_RATE)
    if not ser:
        print(f"Could not initialize serial device `{ser}`.")
        exit(1)

# Break up the binary file


class ChunkOfBinary:
    """ Represents a 512-Byte chunk of binary
    """

    def __init__(self, data: bytes, startloc: int):
        self.data = data
        assert startloc % 256 == 0, "Cannot break across page boundaries."
        self.loc0 = startloc
        self.loc1 = startloc + 256

    def generate_loader_code(self) -> bytes:
        """Generates a chunk of 6502 machine code to load in this chunk of code.

        Returns:
            bytes: A chunk of relocatable code, gauraunteed to be 64 Bytes long (padded)
        """
        code = bytes(loader6502.loader_code(self.loc0))
        assert len(code) <= 64, "Loader code is too big."
        return code + b'\x00' * (64 - len(code))


chunk_arr = []

print(f"Reading input file `{inp_file}`")
print("Chunk 001 / 128", end='')

with open(inp_file, 'rb') as inp_fp:
    for i in range(128):  # There are 128 512-byte chunks in 64kiB
        bin_dat = inp_fp.read(512)
        if bin_dat != b'\x00'*512:
            chunk_arr += [
                ChunkOfBinary(bin_dat, 512*i)
            ]
        print(f"{'\b' * 9}{str(i+1).zfill(3)} / 128", end='')
assert len(chunk_arr) <= 128

print(f"\nNumber of used chunks: {len(chunk_arr)}")

if len(chunk_arr) == 0:
    print("No data to send. You must be confused.")
    exit(1)

# If dry run, finish up
if dry_run:
    print("Finishing dry run.")
    exit(0)

# Handshake w/ PIC
print()
print("Handshaking with PIC")

ser.write(b"Hey, ya there?")
if ser.read(4) != b"Yup!":
    print("PIC did not complete handshake. Aborting.")
    exit(1)

print("Sending data...")
print(f"Chunk 001 / {len(chunk_arr)}", end='')
i = 0
for chunk in chunk_arr:
    i += 1
    print('.', end='')
    chunkstr = b'::::' + chunk.data + b'::::' + chunk.generate_loader_code() + \
        b';;;;'
    ser.write(chunkstr)
    print('.', end='')
    if ser.read(3) != b'ACK':
        print("NAK. Aborting.")
        exit(1)
    print('.', end='')
    print(f"{'\b' * 12}Chunk {str(i).zfill(3)} / {str(len(chunk_arr)).zfill(3)}", end='')

print("\nSending init")
ser.write(b"....")
ser.write(JUMP_CODE)
ser.write(b";;;;")

print("Awaiting final ACK...")
if ser.read(3) != b'ACK':
    print("No final ACK.")

print()
print("Success.")
exit(0)
