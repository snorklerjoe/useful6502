# Configuration

CPU = 6502
#CPU = 65sc02  # 65c02

# Location of file with CC65 target-nonspecific library
NONE_TARGET_LIB = /usr/share/cc65/lib/none.lib

# Compiler and flags
CC = cc65
ASFLAGS = --cpu $(CPU)
AS = ca65
AR = ar65
LD = ld65

CFLAGS = -t none -O --cpu $(CPU)
LDFLAGS = 

# Target binary
TARGET = build/kernel.bin

# Directories
BUILD_DIR = build
LIB_BUILD_DIR = $(BUILD_DIR)/lib

# Source files
# LIBSRCS = $(wildcard lib/*.s)      		 	# All library .s files
# LIBOBJS = $(patsubst lib/%.s, $(LIB_BUILD_DIR)/%.o, $(LIBSRCS))  # Place .o files in build/lib

OBJ_DE_LIB = copydata.o condes.o zerobss.o
LIBOBJS = $(patsubst %, $(LIB_BUILD_DIR)/%, $(OBJ_DE_LIB))

SRCS = $(wildcard *.c) $(wildcard *.s) $(wildcard lib/*.s)     # Find all .c and .s files
OBJS = $(patsubst %.c, $(BUILD_DIR)/%.o, $(filter %.c, $(SRCS))) \
       $(patsubst %.s, $(BUILD_DIR)/%.o, $(filter %.s, $(SRCS))) # Place .o files in build

# Ensure build directories exist
$(shell mkdir -p $(BUILD_DIR) $(LIB_BUILD_DIR))

# Build everything
all: $(OBJS) $(LIBOBJS)
	$(LD) -C kernel_target.cfg -m $(BUILD_DIR)/main.map $(LIBOBJS) $(OBJS) -o $(TARGET)

# # Build the kernel libc
# .PHONY: lib
# lib: $(BUILD_DIR)/kernel.lib

$(LIBOBJS): $(NONE_TARGET_LIB)
	ar65 x $< $@

# $(BUILD_DIR)/kernel.lib: $(LIBOBJS)
# 	cp $(NONE_TARGET_LIB) $@
# 	$(AR) a $@ $^

# Build the kernel
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ $(LDFLAGS)

# Compile source files into object files
$(BUILD_DIR)/%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

# Clean up build artifacts
.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
