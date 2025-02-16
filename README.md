# Useful 6502 Machine

This is a repo for a simulation package for a 6502 computer I am envisioning.  
I am considering developing a 6502 machine with a unique set of quirks and features.
But, to make the project seem worthwhile, I intend to make it useful.

Essentially, my goals are to produce a useful 6502-based portable machine,
running my own operating system.

I want the following end goals to categorize the machine as "useful":

- Virtual memory (at least bank-switched)
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

