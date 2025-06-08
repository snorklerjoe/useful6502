
PIC-16C5x - Implementation notes - Preliminary version
------------------------------------------------------
E. Romani (romani@ascu.unian.it)         February 1998

INTRODUCTION
------------

This package contains a synthesizable VHDL description of the Microchip's
PIC-16C5X microcontroller. 

The project was inspired by the Synthetic PIC written by Thomas A. Coonan
(tcoonan@mindspring.com).  Over the Coonan's implementation the present
offers the following improvements: 

- clear separation between the controller and the datapath, which results 
  in a more elegant (I think :) and understandable implementation;
- use of 3-state busses, which results in a more efficent implementation
  on XILINX's FPGAs.
- support of the indirect addressing-mode via the FSR and INDF registers;
- support of the I/O ports;

Moreover, the VHDL descriptions are based on the IEEE-1164 standart types
STD_LOGIC and STD_LOGIC_VECTOR.  Thus, you will need the libraries
IEEE.STD_LOGIC_1164 and IEEE.STD_LOGIC_ARITH in order to compile the code. 

The design has been successfully synthesized using the CADENCE's SYNERGY
synthesizer and the XILINX's XC4000 library.  Example schematic views of
synthesized units are provided in postscript format in the "postscript"
directory.  

The design should fit in a XILINX's XC4005 FPGA (depending on the lenght
of the program stored in the ROM and on the number of general-pourpose
registers implemented). 

Documentation about the PIC can be found at the Microchip's WEB site
(www.microchip.com).  There you can also download the MPASM assembler and
a simulator. 


SIMULATION
----------

To simulate the PIC we use the unit defined in "pic_core.vhd". The
test-bench is defined in "bench.vhd".  This test-bench is very simple and
only generates the RESET and CLOCK signals for the PIC. 

The units' hierarchy is:

bench
  pic_core
    fadr_mux
    pic_alu
    pic_ctrl
    pic_rom
    pic_time
    reg_8rst
    reg_8t
    reg_cons
    reg_file
    reg_fsr
    reg_inst
    reg_io
    reg_pc
    reg_s
    reg_w

The program-code is stored in a "ROM".  The content of the ROM is defined
in the file "pic_rom.vhd".  You can produce a new ROM containing your own
code using the "hex2vhdl" program.  This program produces a VHDL
description of the ROM starting from a HEX file (produced by MPASM
assembler). 
    

GENERAL ORGANISATION
--------------------

The PIC consists of two main components: the control unit (controller) and
the data processing unit (datapath).

The control unit is responsible for the interpretation of instructions and
for the generation of the control signals required to execute a certain
instruction. 

The data processing part performs the actions specified by the control
unit.  It consists of units which elaborate and/or store information, and
paths (busses) which trasport information between units. 

The detailed structure of the PIC's datapath is depicted in "datapath.ps".
The central component of the datapath is the ALU, which performs the
arithmetic and logic operations.  Two 3-state busses, bus_a and bus_b,
carry the operands for the ALU.  A third bus, bus_out, carries the output
of the ALU. 

Almost all the movements of data are performed using these busses.  Thus,
the ALU is involved in the execution of almost every instruction (the ALU
includes by-pass operations, i.e. operations which copy one of the
operands to the output). 

- Clocking Scheme / Instruction Cycle / Instruction Flow

The whole PIC is driver by a single clock signal.  Every flip-flip in the
design triggers on the rising edge of this clock; this affects the
behaviour of the I/O ports (see below).  The RESET is asynchronous. 

As in the original PIC, thanks to a separate bus for the code, instruction
fetch is performed in parallel with instruction decode/execution.  Every
instruction is "executed" in a single clock-cycle.  Nevertheless,
instructions which imply a write to the program-counter require an
additional clock-cycle to fetch the right "next" instruction. 


IMPLEMENTATION NOTES
--------------------

The following section covers the implementation details.  You should give
a look to the Microchip's PIC datasheet before reading this :)

- Program Memory Organization / Program Counter / Stack

The implemented PIC has a 9-bit Program Counter (PC) and thus is capable
of addressing a 512 x 12 bit program memory space.  Note that accessing a
location above the physically implemented program memory results in a
wraparound. 

CALL instructions, or any instructions having the PC as destination,
affect only bits 0:7 of the PC.  Bit 8 is always cleared.  For GOTO
instructions the whole new value of the PC is provided by the instruction
word.

A two level hardware stack for the PC is implemented. The stack has the
same width of the PC (9 bits).  Note that the depth of the stack can be
increased very easily (see VHDL code in "reg_pc.vhd").  If more than two
sequential CALLs are executed, only the most recent two return addresses
are stored.

Paging of the program memory is not implemented.  The RESET vector is
0x000 (while in the original PIC it is 0x1FF).

- Data Memory (Registers)

The number of register can be easily modified changing the code in
"pic_regs.vhd".  Read-access to a non-physically implemented register
results in a 0x00 value; write access results in a no-op.

While defining the implemented registers in the VHDL code, remember that
registers 0-7 have special functions and are implemented in other source
files. 

- STATUS (3) Register

Although all the 8 bits of this register are implemented (in the sense
that they can be used to store information), only bits 0 (carry) and 2
(zero) have the meaning specified in the PIC datasheet. 

- OPTION Register

The OPTION register is not implemented.  The execution of the OPTION
instruction results in a no-op. 

- INDF and FSR registers

The INDF and FSR register work as specified in the PIC's datasheet.

- I/O ports

I/O ports A, B and C are supported.  They are all 8 bit wide (while in the
PIC16C5X port A is only 4 bit wide). 

In the core for implementation on XILINX ("pic_core.vhd"), the I/O
registers are implemented in schematic.  Anyway, "reg_io.vhd" (used in
"pic_core_sim.vhd") describes the same behaviour. 

Note that, as specified in the datasheet, a read of the ports reads the
pins, not the output if the data latches. 

The value at the pins is sampled at every rising edge of the clock (for
details see "pic_io.vhd" and the XILINX's 4000-series datasheets).  This
is different from what happens in the real PIC. 

The TRIS registers have the same behaviour specified in the PIC's
datasheet.

-- TIMER / DRT / WDT

The TIMER, the Device Reset Timer and the Watchdog Timer are not
implemented.  The TMR0 register (named RTCC in the VHDL code) is
implemented, but has no special function.  It can be used as a general
pourpose register. 

-- Instructions

All the instructions of the original PIC are implemented apart from
OPTION, SLEEP and CLRWDT.  Execution of non-implemented instructions
results in a no-op. 

