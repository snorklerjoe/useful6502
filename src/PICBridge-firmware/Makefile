# Makefile for PIC projects using XC8 and pk2cmd
# Compiles all .c files in the directory to produce a .hex
# Flashes using pk2cmd

# Adjust these:
DEVICE = PIC16F15385
PK2CMD_FLAGS = -P$(DEVICE) -J -M -A5.0 -F

# Toolchain
CC = /opt/microchip/xc8/v3.00/bin/xc8-cc
CFLAGS = -mcpu=$(DEVICE) -mconfig

# Find all C files
SOURCES := $(shell find . -type d -name _build -prune -o -type f -name '*.c' -print)

# Generate corresponding object files
OBJECTS := $(SOURCES:.c=.o)

# Default target
all: main.hex

# Compile each .c to .p1
%.p1: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Link .p1 files to produce .hex
main.hex: $(OBJECTS:.o=.p1)
	$(CC) $(CFLAGS) $^ -o $@

# Flash using pk2cmd
flash: main.hex
	sudo pk2cmd $(PK2CMD_FLAGS) $<

verify: main.hex
	sudo pk2cmd -P$(DEVICE) -Y -F $<

release:
	sudo pk2cmd -PPIC16F15385 -R

cycle: clean all flash verify release

# Clean build artifacts
clean:
	rm -f *.o *.hex *.pl *.s *.sym *.cmf *.hxl
	rm -rf _build

.PHONY: all flash clean
