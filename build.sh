#!/bin/bash

source build.properties

if which $GAL_GCC 2>/dev/null; then
	echo "Using $GAL_GCC"
else
	export PATH=$GALILEO_SDK/hardware/tools/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux-uclibc/:$PATH
fi

$GAL_GCC --sysroot=$GALILEO_SDK/hardware/tools/sysroots/i586-poky-linux-uclibc -o bin/debug/carduino src/main.c
