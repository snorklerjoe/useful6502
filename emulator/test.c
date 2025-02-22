// /* Test of 6502 emulator
//  */
// #define CPU_6502_STATIC
// #define CPU_6502_USE_LOCAL_HEADER

// #include <string.h>
// #include <stdio.h>

// #include <Z/types/base.h>
// #include <Z/hardware/CPU/architecture/6502.h>
// #include <6502.h>

// typedef struct {
// 	M6502 cpu;
// 	zuint8 memory[65535];
// } Machine;


// zuint8 cpu_read(void *self, zuint16 address) {
//     //printf("\t\tRead @ 0x%x \n", address);
//     return ((Machine*) self)->memory[address];
// }


// void cpu_write(void *self, zuint16 address, zuint8 value) {
//     ((Machine*) self)->memory[address] = value;
// }


// void machine_initialize(Machine *self) {
// 	self->cpu.context = self;
// 	self->cpu.read = &cpu_read;
// 	self->cpu.write = &cpu_write;
// 	memset(self->memory, 0, 65535);
// 	m6502_power(&self->cpu, TRUE);
// }


// Machine m;

// int main(void) {
//     machine_initialize(&m);

//     // Load an initial program- let's just loop an inc!

//     // Set reset vector to 0xA000
//     m.memory[0xFFFC] = 0x00;
//     m.memory[0xFFFD] = 0xA0;

//     // Set BRK vector to 0xA000
//     m.memory[0xFFFE] = 0x00;
//     m.memory[0xFFFF] = 0xA0;

//     // Make program at 0xA000 to increment 0x00 over and over
//     m.memory[0xA000] = 0xE6;  // INC ZP
//     m.memory[0xA001] = 0x00;  // $00

//     m.memory[0xA002] = 0x4C;  // JMP
//     m.memory[0xA003] = 0xA0;  // $A000
//     m.memory[0xA004] = 0x00;

//     printf("Init value at 0x0000: %i \n", m.memory[0]);

// //    m6502_reset(&m.cpu);

//     for(int i = 0; i < 128; i++) {
//         m6502_run(&m.cpu, 10);
// //        printf("\t PC @ 0x%x\n", m.cpu.state.);
//     }

//     printf("New value at 0x0000: %i \n", m.memory[0]);
// }
