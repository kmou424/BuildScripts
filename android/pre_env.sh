#!/bin/bash

KERNEL_DIRECTORY="kernel/xiaomi/sm6150"
DEVICE_DIRECTORY="device/xiaomi/violet"
VENDOR_DRIECTORY="vendor/xiaomi/violet"

git clone https://github.com/kmou424/sena_kernel_violet-sm6150 $KERNEL_DIRECTORY && git clone https://github.com/kmou424/device_xiaomi_violet $DEVICE_DRIECTORY && git clone https://github.com/PixelExperience-Devices/vendor_xiaomi_violet $VENDOR_DRIECTORY

# Patcher
bash patcher_hals.sh