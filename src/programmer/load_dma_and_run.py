""" A script that loads the DMA memory with a particular binary and runs it.

The specified binary file should be an image of everything from $F810 to $FFFF.
"""

from u6_comm import PICBridge
import sys
import os

def err(text):
    print(err)
    sys.exit(1)

filename = sys.argv[1]
stat = os.stat(filename)

if stat.st_size != (0xFFFF - 0xF810 + 1):
    err("Specified binary needs to be full image to be loaded into $F810 to $FFFF") 

print("Binary file size OK")
 
# Load image
image: bytes
with open(filename, 'rb') as fd:
    image = fd.read()

r_vec = image[-4] + (image[-3] << 8)
if 0xFFFF < r_vec < 0xF810:
    err("Invalid RESB vector entrypoint outside of SRAM.")


with PICBridge('/dev/ttyUSB0') as pb:
    # Halt things before we start poking in RAM
    pb.cpu_reset()
    # Write machine code into RAM
    # Code will live at $F810 on the 6502, which is $0010 on the DP SRAM
    pb.sram_write(0x10, image)
    # Verify
    data_verify = pb.sram_read(0x10, 0xFFFF - 0xF810 + 1)
    if data_verify != image:
        err("Error in verify")
    print("Successful verify")
    # Allow the 6502 to turn on
    resb = pb.sram_read(0xFFFC, 2)
    pb.cpu_unreset()
    print("Reset CPU.")
    resb_vec = resb[0] + (resb[1] << 8)
    print("Going to execute at " + str(hex(resb_vec)))
    if r_vec != resb_vec:
        err("Does not match intended vector.")
