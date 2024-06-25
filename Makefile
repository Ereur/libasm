# Compiler and archiver settings
AS=nasm
AR=ar
ASFLAGS=-f elf64
ARFLAGS=rcs

# Source and object files
SOURCES=$(wildcard *.asm)
OBJECTS=$(SOURCES:.asm=.o)

# Target library
TARGET=libasm.a

# Default target
all: $(TARGET)

# Rule to create the static library
$(TARGET): $(OBJECTS)
	$(AR) $(ARFLAGS) $@ $^

# Rule to compile assembly files into object files
%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

# Clean up build files
clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: all clean