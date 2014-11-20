#TODO Make this better

#export SDK=../arduino-1.5.3-Intel.1.0.4
#echo "SDK=$SDK" > env.mk
#sed 's/export //g' $SDK/hardware/tools/environment-setup-i586-poky-linux-uclibc | tr -d '"' >> env.mk
export PATH=$PATH:/home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/x86_64-pokysdk-linux/usr/bin:/home/nick/dev/arduino/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux-uclibc
