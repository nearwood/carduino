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

#CFLAGS=-Wall --sysroot=$(SYSROOT) -I$(SDKINC) -I$(VARIANT)
BIN=bin
SOURCES=$(wildcard src/*.c)
BUILDDIR=build
#$(SOURCES:.c=.o)
OBJS=$(patsubst src/%.c,build/%.o,$(SOURCES))
OBJS+=build/arduino.o
EXECUTABLE=$(BIN)/carduino

.PHONY: all clean upload

all: $(EXECUTABLE)
	$(STRIP) $(EXECUTABLE)
	@$(SIZE) -A $(EXECUTABLE) | grep "Total"

$(EXECUTABLE): $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $@

build/%.o: $(SOURCES)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@ $(CFLAGS)
	
build/arduino.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $(SDK)/hardware/arduino/x86/cores/arduino/wiring_digital.c -o $@ $(CFLAGS)
	
upload: $(EXECUTABLE)
	#scp blah blah
	
clean:
	rm -rvf $(BIN)/* $(BUILDDIR)/*
