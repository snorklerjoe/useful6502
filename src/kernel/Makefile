
# Minimal Makefile for Useful6502 Kernel (pure assembly, no C runtime)

CPU = 65C02
AS = ca65
LD = ld65

BUILD_DIR = build
TARGET = $(BUILD_DIR)/kernel.bin
MAP = $(BUILD_DIR)/kernel.map
CFG = kernel_target.cfg

SRCS = $(wildcard *.s) $(wildcard lib/*.s)
OBJS = $(patsubst %.s,$(BUILD_DIR)/%.o,$(notdir $(SRCS)))

all: $(BUILD_DIR) $(TARGET)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(TARGET): $(OBJS)
	$(LD) -C $(CFG) -o $@ -m $(MAP) $(OBJS)

$(BUILD_DIR)/%.o: %.s | $(BUILD_DIR)
	$(AS) --cpu $(CPU) $< -o $@

$(BUILD_DIR)/%.o: lib/%.s | $(BUILD_DIR)
	$(AS) --cpu $(CPU) $< -o $@

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
