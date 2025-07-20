# Kernel Software Secification

This document will define the workings of the kernel I plan to implement for this machine.

Note that present tense will be used in this document irrespective of the implementation status.

## User / Supervisor Modes

The kernel implements user / supervisor modes with a simple mechanism:

- Any interrupt, software (`BRK`) or hardware (`RESB`, `IRQ`, or `NMI`), will force the system into kernel (supervisor) mode.
- As soon as an interrupt occurs, the kernel must quickly force a user-mode inhibit flag
- To exit, the 

## Memory Layout

## Interrupts

### Types & Hardware

### Interrupt Service Routines

## System Tree

### File Paths

## Processes

### Proc Struct
****

### Context Switch

### Scheduling

## System Calls

### Trap Machanism

### List of Calls

