# TODO mkdirs if not exist
# TODO variant switch
# TODO Uploading? SCP only?

# HAHA Use the arduino build files you dope

#Variants:
#fab_c, fab_d: gen1
#fab_e, fab_g: gen2
#

include env.mk

ifndef SDK
$(error SDK is not set. Did you run setup-env.sh?)
endif

#SDK=../arduino-1.5.3-Intel.1.0.4
#SDKROOT=$(SDK)/hardware/tools/sysroots/x86_64-pokysdk-linux
#SDKINC=$(SDK)/hardware/arduino/x86/cores/arduino/
#VARIANT=$(SDK)/hardware/arduino/x86/variants/galileo_fab_d/
#SDKLIB=$(SDK)/hardware/arduino/x86/libraries

#TEST=$(shell $(SDK)/hardware/tools/environment-setup-i586-poky-linux-uclibc/environment-setup-i586-poky-linux-uclibc)
#TEST=$(shell $(SDK)/hardware/arduino/x86/ino_conf.txt)

#tried to source these from ino_conf.txt, but no worky
#CC_FLAGS=-m32 -march=i586 -g -Os -Wall -ffunction-sections -fdata-sections  -D__ARDUINO_X86__ -DARDUINO=153
#CXX_FLAGS=-fno-exceptions

#SYSROOT=$(SDK)/hardware/tools/sysroots/i586-poky-linux-uclibc
#SDKBIN=$(SDKROOT)/usr/bin/i586-poky-linux-uclibc
#CC=$(SDKBIN)/i586-poky-linux-uclibc-gcc
#GPP=i586-poky-linux-uclibc-g++

#CFLAGS=-Wall --sysroot=$(SYSROOT) -I$(SDKINC) -I$(VARIANT)
#LDFLAGS=--sysroot=$(SYSROOT)
BIN=bin
SOURCES=$(wildcard src/*.c)
BUILDDIR=build
#$(SOURCES:.c=.o)
OBJS=$(patsubst src/%.c,build/%.o,$(SOURCES))
TARGET=$(BIN)/carduino

.PHONY: all clean upload

all: $(TARGET)
	$(STRIP) $(TARGET)
	@$(SIZE) -A $(TARGET) | grep "Total"

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $@

build/%.o: src/%.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@ $(CFLAGS)
	
upload: $(TARGET)
	#scp blah blah
	
clean:
	rm -rvf $(BIN)/* $(BUILDDIR)/*
