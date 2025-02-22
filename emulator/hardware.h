#ifndef HARDWARE_H
#define HARDWARE_H

#include <Z/types/base.h>
#include <Z/hardware/CPU/architecture/6502.h>
#include <6502.h>


typedef struct {
	M6502 cpu;
	zuint8 memory[65535];
	// Memory mapping / page table
	// Zero-page
} machine_ctx;

// Dumps CPU state to a string, for debug
void cpu_dump(char * state);

// Dumps verbose CPU state to a string, for debug
void cpu_dump_verbose(char * state);

// initializes the cpu, with given memory i/o functions
machine_ctx *machine_init();

// Resets the machine
void machine_reset(machine_ctx *self);

// Runs the machine for a given # of cycles
void run_cycles(machine_ctx *ctx, zusize cycles);

#endif
