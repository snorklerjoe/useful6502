# Useful 6502 Machine

This is a repo for a simulation package for a 6502 computer I am envisioning.  
I am considering developing a 6502 machine with a unique set of quirks and features.
But, to make the project seem worthwhile, I intend to make it useful.

Essentially, my goals are to produce a useful 6502-based portable machine,
running my own operating system.

I want the following end goals to categorize the machine as "useful":

- At least 2 Megabytes of program memory and 2 Megabytes of data memory, of which at least 8k of data can be accessed at one time.
- Protected memory (kernel and user run modes defined by hardware checking if kernel or user code is being executed)
- Traps via "BRK" instruction for sys calls
- Full preemptive multitasking
- File handler, compatible with FAT32-formatted SD cards for easy file transfer
- Kernel-level device drivers, mapping i/o to UNIX-like sockets/files
- Standard library compatible with cc65 for creating high-level programs
- Command-line shell
- Basic UNIX-like shell utilities
- 802.11 WiFi via ESP32, with a driver to enable ssh, sftp, http, and https
- Simple web browser, with limited but existent javascript capabilities

Because I am unsure of the feasibility of all of these goals, I will begin this project with only
simulated hardware.

## Physical Memory Map

### FF00-FFFF

System vectors (kernel/hardware)

### FE00-FEFF

Resident kernel code to load kernel memory

### 8000-FCFF

User TEXT; switched

### 0200-8000

User DATA; switched

### Page One

User hardware stack; switched

### Page Zero

- **00f0-00ff**: User-reserved zp memory; preserved
- **0010-00ef**: Kernel-owned zp memory
- **0000-000f**: Reserved for memory-mapped i/o (0000 is a status register)

## Faults

Faults will be detected by hardware and trigger an NMI. The status register will indicate a fault has occurred, and the kernel will immediately abort the process.
