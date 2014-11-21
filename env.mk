SDK=../arduino-1.5.3-Intel.1.0.4
#GPATH=$(SDK)/hardware/tools/sysroots/x86_64-pokysdk-linux/usr/bin
#SYSROOT=$(SDK)/hardware/tools/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux-uclibc

OECORE_NATIVE_SYSROOT=$(SDK)/hardware/tools/sysroots/x86_64-pokysdk-linux
OECORE_TARGET_SYSROOT=$(SDK)/hardware/tools/sysroots/i586-poky-linux-uclibc
OECORE_ACLOCAL_OPTS=-I $(SDK)/hardware/tools/sysroots/x86_64-pokysdk-linux/usr/share/aclocal
OECORE_DISTRO_VERSION=1.4.2
OECORE_SDK_VERSION=1.4.2
PYTHONHOME=$(SDK)/hardware/tools/sysroots/x86_64-pokysdk-linux/usr
ARCH=x86
PKG_CONFIG_SYSROOT_DIR=$(SDK)/hardware/tools/sysroots/i586-poky-linux-uclibc
PKG_CONFIG_PATH=$(SDK)/hardware/tools/sysroots/i586-poky-linux-uclibc/usr/lib/pkgconfig
CONFIG_SITE=$(SDK)/hardware/tools/site-config-i586-poky-linux-uclibc
#BIN=$(SDK)/hardware/tools/
INCLUDES=-I $(SDK)/hardware/arduino/x86/cores/arduino -I $(SDK)/hardware/arduino/x86/variants/galileo_fab_d -I $(SDK)/hardware/tools/sysroots/i586-poky-linux-uclibc/usr/include
TARGET=i586-poky-linux-uclibc
TARGET_PREFIX=$(TARGET)-
CC=$(TARGET_PREFIX)gcc
CXX=$(TARGET_PREFIX)g++
CPP=$(TARGET_PREFIX)gcc
AS=$(TARGET_PREFIX)as
LD=$(TARGET_PREFIX)ld
GDB=$(TARGET_PREFIX)gdb
SIZE=$(TARGET_PREFIX)size
STRIP=$(TARGET_PREFIX)strip
RANLIB=$(TARGET_PREFIX)ranlib
OBJCOPY=$(TARGET_PREFIX)objcopy
OBJDUMP=$(TARGET_PREFIX)objdump
AR=$(TARGET_PREFIX)ar
NM=$(TARGET_PREFIX)nm
M4=m4
CONFIGURE_FLAGS=--target=$(TARGET) --host=$(TARGET) --build=x86_64-linux --with-libtool-sysroot=$(OECORE_TARGET_SYSROOT)
CFLAGS=-m32 -march=i586 -O2 -pipe -g -feliminate-unused-debug-types
CXXFLAGS=-E -m32 -march=i586 --sysroot=$(OECORE_TARGET_SYSROOT) -O2 -pipe -g -feliminate-unused-debug-types -fpermissive
LDFLAGS=-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed --sysroot=$(OECORE_TARGET_SYSROOT)
CPPFLAGS=-m32 -march=i586 --sysroot=$(OECORE_TARGET_SYSROOT)

