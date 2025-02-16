# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -Ilib    # Include the library header directory
LDFLAGS =                        # Add linker flags if needed
TARGET = useful6502              # Name of the final executable

# Source files
SRCS = $(wildcard *.c) $(wildcard lib/*.c)  # Include main and library sources
OBJS = $(SRCS:.c=.o)                        # Convert .c files to .o files

# Build the executable
$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET) $(LDFLAGS)

# Compile C files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up build artifacts
clean:
	rm -f $(OBJS) $(TARGET)

