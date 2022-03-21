EDK2 for Samsung Galaxy Tab S7 FE wifi model. (Snapdragon 778G aka SM7325)

Based on map220v's commits for Galaxy A72 - https://github.com/map220v/edk2-a72q

## Working

Display

Boot to EFI shell


## Not Working

UFS

SDcard

USB

ACPI

etc...


## WARNING

DO NOT USE THIS ON LTE OR 5G MODELS (Snapdragon 750G)


This EDK2 is targeted for Galaxy Tab S7 FE wifi 6G RAM model

For 4G and 8G RAM models you might need to change some values


## Building

Tested on:

Ubuntu 20.04 (x86)


Setup
```
git clone https://github.com/Gezine/edk2-SMT733
git clone https://github.com/tianocore/edk2.git --recursive --depth 1
sudo apt install build-essential uuid-dev iasl git nasm python3-distutils gcc-aarch64-linux-gnu abootimg
cd edk2-SMT733
./firstrun.sh
```
Build
```
./build_DEBUG.sh
```
Flash
```
heimdall flash --BOOT boot-SMT733_DEBUG.img
```

# Credits

SimpleFbDxe screen driver is from imbushuo's [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg).

`map220v` for his original `edk2-a72q` and teaching me a lot of things

`fxsheep` for his original `edk2-sagit`

`strongtz` for maintaining Renegade Project****

