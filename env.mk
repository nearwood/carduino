SDK=../arduino-1.5.3-Intel.1.0.4
#GPATH=$(SDK)/hardware/tools/sysroots/x86_64-pokysdk-linux/usr/bin
#SYSROOT=$(SDK)/hardware/tools/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux-uclibc

OECORE_NATIVE_SYSROOT=/home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/x86_64-pokysdk-linux
OECORE_TARGET_SYSROOT=/home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/i586-poky-linux-uclibc
OECORE_ACLOCAL_OPTS=-I /home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/x86_64-pokysdk-linux/usr/share/aclocal
OECORE_DISTRO_VERSION=1.4.2
OECORE_SDK_VERSION=1.4.2
PYTHONHOME=/home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/x86_64-pokysdk-linux/usr
ARCH=x86
PKG_CONFIG_SYSROOT_DIR=/home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/i586-poky-linux-uclibc
PKG_CONFIG_PATH=/home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/i586-poky-linux-uclibc/usr/lib/pkgconfig
CONFIG_SITE=/home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/site-config-i586-poky-linux-uclibc
INCLUDES=-I /home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/arduino/x86/cores/arduino -I /home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/arduino/x86/variants/galileo_fab_d -I /home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/i586-poky-linux-uclibc/usr/include
TARGET_PREFIX=i586-poky-linux-uclibc-
CC=i586-poky-linux-uclibc-gcc
CXX=i586-poky-linux-uclibc-g++
CPP=i586-poky-linux-uclibc-gcc
AS=i586-poky-linux-uclibc-as
LD=i586-poky-linux-uclibc-ld
GDB=i586-poky-linux-uclibc-gdb
SIZE=i586-poky-linux-uclibc-size
STRIP=i586-poky-linux-uclibc-strip
RANLIB=i586-poky-linux-uclibc-ranlib
OBJCOPY=i586-poky-linux-uclibc-objcopy
OBJDUMP=i586-poky-linux-uclibc-objdump
AR=i586-poky-linux-uclibc-ar
NM=i586-poky-linux-uclibc-nm
M4=m4
CONFIGURE_FLAGS=--target=i586-poky-linux-uclibc --host=i586-poky-linux-uclibc --build=x86_64-linux --with-libtool-sysroot=$(OECORE_TARGET_SYSROOT)
CFLAGS=-m32 -march=i586 -O2 -pipe -g -feliminate-unused-debug-types
CXXFLAGS=-E -m32 -march=i586 --sysroot=$(OECORE_TARGET_SYSROOT) -O2 -pipe -g -feliminate-unused-debug-types -fpermissive
LDFLAGS=-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed --sysroot=$(OECORE_TARGET_SYSROOT)
CPPFLAGS=-m32 -march=i586 --sysroot=$(OECORE_TARGET_SYSROOT)

