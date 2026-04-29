#!/bin/bash

shopt -s extglob

rm -rf package/kernel
git_clone_path master https://github.com/coolsnowwolf/lede target/linux/amlogic package/boot/uboot-amlogic package/kernel

sed -i "s/autocore-arm/autocore/" target/linux/amlogic/Makefile

echo '
CONFIG_BLK_DEV_INTEGRITY=n
' >> target/linux/amlogic/mesongx/config-6.1



