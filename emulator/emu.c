#include <stdio.h>
#include <stdlib.h>

#include "hardware.h"

machine_ctx *ctx;

int main(int argc, char *argv[]) {
    if(argc != 3) {
        printf("USAGE: useful6502emu [kernel_image] [# Cycles]\n");
        return 1;
    }

    printf("Useful 6502 Emu\n");
    printf("===============\n\n");

    printf("Initializing machine...\n");
    ctx = machine_init();

    printf("Loading kernel image...\n");
    FILE *f = fopen(argv[1], "rb");
    if(f == NULL) {
        printf("Failed to open file\n");
        return 1;
    }

    zuint16 addr = 0x200;
    zuint8 val;
    while(!feof(f) && addr >= 0x200) {
        fread(&val, 1, 1, f);
        //printf("Loading 0x%02x into 0x%04x\n", val, addr);
        ctx->memory[addr] = val;
        addr++;
    }

    fclose(f);

    printf("Running machine for %i cycles...\n", atoi(argv[2]));
    printf("Machine Output:\n");
    printf("===============\n");
    machine_reset(ctx);
    run_cycles(ctx, atoi(argv[2]));
    printf("\n===============\n");
}
