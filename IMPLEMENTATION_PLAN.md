
# Implementation Plan

This is the implementation plan for my homebrew 65c02 machine, from initial hardware validation to kernel and OS development

## Hardware Debugging & Validation

- [x]  **Rev A design completion**  
  - Goals & constraints identified
  - Initial schematics developed
  - PCB layout
  - PCB, stencil, and component ordering

- [x]  **Main board assembly**  
  - Assembly & reflow

- [x]  **Initial electrical tests**  
  - Test voltage regulators & check for shorts

- [x] **PIC16 bring-up: Hello world**
  - Write and flash a simple test program (UART Hello World) to verify PIC programming and basic operation.

- [x] **PIC to Dual-port SRAM communication**
  - Develop subroutines for accessing and verifying the dual-port SRAM from the PIC

- [ ] **PIC programs 65c02 memory**
  - Use the PIC to write a short program into SRAM.
  - Allow the 65c02 to execute this program, verifying code/data path and bus arbitration.

- [ ] **PIC ↔ SPI EEPROM**
  - Develop routines for the PIC to read/write the SPI EEPROM.
  - Test with known data patterns and verify persistence.

- [ ] **PIC bootloader & host communication**
  - Implement a bootloader on the PIC that communicates with a Python script on the host PC (via UART).
  - Enable easy programming of kernel images into the SPI EEPROM.
  - Validate end-to-end image transfer and storage (using a checksum?).

- [ ] **65c02 boot from SRAM**
  - Use the PIC to load a test/benchmark image into SRAM.
  - Run the image on the 65c02, verifying CPU operation and memory access.

- [ ] **Hardware test & benchmark suite**
  - Develop a comprehensive test image to exercise all hardware features (memory, I/O, timers, etc.).
  - Run tests at various clock frequencies to determine system stability and performance limits.

- [ ] **System clock board**
  - Design and build a dedicated clock board to replace the function generator.
  - Test with the rest of the system

## Kernel Development

This is still vague until the hardware is validated / debugged and low-level firmware matures.

- [ ] **Initial Kernel Bring-Up**
  - Develop a minimal kernel to handle basic process management and hardware abstraction.
  - Test context switching, memory protection, and basic I/O.

- [ ] **Driver Development**
  - Write drivers for SD card (FAT32), serial I/O, and other peripherals.
  - Integrate with kernel and validate functionality.

- [ ] **CC65 Libc**
  - Develop a custom libc that enabls userland applications to be written or ported in C

- [ ] **Userland & Shell**
  - Develop a simple shell and basic utilities.

---

*Update this plan as milestones are reached and new challenges arise.*
