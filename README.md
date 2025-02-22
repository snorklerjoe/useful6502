# Useful 6502 Machine

This is a repo for a simulation package for a 6502 computer I am envisioning.  
I am considering developing a 6502 machine with a unique set of quirks and features.
But, to make the project seem worthwhile, I intend to make it useful.

Essentially, my goals are to produce a useful 6502-based portable machine,
running my own operating system.

I want the following end goals to categorize the machine as "useful":

## Hardware Goals

- At least 2 Megabytes of program memory and 2 Megabytes of data memory, of which at least 16k of data and 16k of program memory can be accessed by a single process.
- Protected memory (kernel and user run modes defined by hardware checking if kernel or user code is being executed)
- ESP32 for i/o -- The idea here is to use pre-existing implementations of an 802.11/TCPIP/USB stack on dedicated hardware to offload i/o headaches and simplify the software.
  - WiFi, with HTTP/HTTPS, FTP, SSH, SFTP, Telnet / plain TCP/UDP
  - UART
  - One-wire
  - USB Host

## Software Goals

- Traps via "BRK" instruction for sys calls
- Full preemptive multitasking, round robin scheduler (maybe mlfq eventually)
- Filesystem: Tree, leaf nodes are devices or drivers.
- Driver for FAT32-formatted SD cards for easy file storage & transfer
- Standard library compatible with cc65 for creating high-level programs
- Basic UNIX-like shell utilities
- Simple web browser, with limited but existent javascript capabilities?

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

- **00d0-00ff**: User-reserved zp memory; preserved
- **0010-00cf**: Kernel-owned zp memory
- **0000-000f**: Reserved for memory-mapped i/o ports
  - PORT0: Hardware status register
  - PORT1: General-purpose parallel port
  - PORT2: RS-232
  - PORT3: ESP32 Data
  - PORT4: ESP32 Control
  - PORT5: 

## Faults

Faults will be detected by hardware and trigger an NMI. The status register will indicate a fault has occurred, and the kernel will immediately abort the process.

## Hardware Timers

There will be at least two hardware countdown timers that can be set/reset by the kernel.  
One will trigger an NMI when it reaches zero, and will stop counting when its value is zero. This will be to allow the kernel to allot a specific number of cycles to a given process.  
Another will be a coarser timer that will trigger a RESET.
This is to eventually return execution to the kernel in the event that a user process uses an illegal instruction or an STP instruction. Such cases will set the fault flag, and the process will be immediately terminated by the kernel.

The kernel will maintain a global clock for user timing needs.
