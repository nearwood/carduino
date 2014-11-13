SDK=../arduino-1.5.3-Intel.1.0.4
SDKROOT=$(SDK)/hardware/tools/sysroots/x86_64-pokysdk-linux
SYSROOT=$(SDK)/hardware/tools/sysroots/i586-poky-linux-uclibc
SDKBIN=$(SDKROOT)/usr/bin/i586-poky-linux-uclibc
CC=$(SDKBIN)/i586-poky-linux-uclibc-gcc
#GPP=i586-poky-linux-uclibc-g++

CFLAGS=-Wall --sysroot=$(SYSROOT)
LDFLAGS=--sysroot=$(SYSROOT)
BIN=bin
SOURCES=src/main.c
BUILDDIR=build
#$(SOURCES:.c=.o)
OBJS=$(patsubst src/%.c,build/%.o,$(SOURCES))
TARGET=$(BIN)/carduino

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $@

build/%.o: src/%.c
	$(CC) -c $< -o $@ $(CFLAGS)
	
clean:
	rm -rvf $(BIN)/* $(BUILDDIR)/*
