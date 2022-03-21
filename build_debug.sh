#!/bin/bash
# based on the instructions from edk2-platform
mkdir workspace
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p SMT733/SMT733_6G.dsc
gzip -c < workspace/Build/SMT733/DEBUG_GCC5/FV/SMT733_UEFI.fd >uefi.img
cat SMT733.dtb >>uefi.img
echo > ramdisk
abootimg --create boot-SMT733_DEBUG.img -k uefi.img -r ramdisk
