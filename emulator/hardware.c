#include "hardware.h"
#include <Z/types/base.h>
#include <Z/hardware/CPU/architecture/6502.h>
#include <6502.h>

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

zuint8 cpu_read(void *self, zuint16 address) {
    zuint8 value = ((machine_ctx*) self)->memory[address];
    
    // if(address == 0x0000 || address >= 0xFFF0) {
    //     printf("\tread: %x @ %x\n", value, address);
    // }

    return value;
}


void cpu_write(void *self, zuint16 address, zuint8 value) {
    if(address == 0x0000) {  // To putch
        printf("%c", value);
    }
    ((machine_ctx*) self)->memory[address] = value;
}

void machine_initialize(machine_ctx *self) {
	self->cpu.context = self;
	self->cpu.read = &cpu_read;
	self->cpu.write = &cpu_write;
	memset(self->memory, 0, 65535);
	m6502_power(&self->cpu, TRUE);
}

void machine_reset(machine_ctx *self) {
    m6502_reset(&self->cpu);
}

machine_ctx *machine_init() {
    machine_ctx *ctx = malloc(sizeof(machine_ctx));
    machine_initialize(ctx);
    m6502_run(&ctx->cpu, 1);
    return ctx;
}

void run_cycles(machine_ctx *ctx, zusize cycles) {
    m6502_run(&ctx->cpu, cycles);
}
