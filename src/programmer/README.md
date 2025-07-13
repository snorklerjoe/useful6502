#  Useful6502 Programmer

This will be python code to use a USB-to-TTL serial device to program kernel
images, load debug binaries, etc. to the 6502 via the PIC interface.

Here is how this will work:

- This script will load a 512-Byte chunk of code via uart to the PIC, along with an address for where it goes
- The PIC will load a 32-Byte copying boot routine to move these code bytes to wherever they need to go  
    This routine will reside in the top 32 bytes of memory addressed by the 6502, and will need to include all of the system vectors.
- The PIC will start the 6502 by bringing RESB high
- The PIC will halt until it gets interrupted by the 6502, indicating that it is done copying.
- At this point, the PIC will hold the 6502 back in a reset state.
  This process will continue until all data has been loaded.
- Finally, the values of the vectors (which reside in SRAM anyway) will be transmitted over uart
- The PIC will load these values in, start the 6502, and wait for an interrupt.

Thus, this programming script needs to do the following:

- Break a 64kiB binary image into 512-Byte chunks
- Figure out the 32-Byte bootloader code for each chunk
- Communicate with the PIC to load it all over and show progress in the terminal
