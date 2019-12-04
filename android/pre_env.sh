#!/bin/bash

KERNEL_DIRECTORY="kernel/xiaomi/sm6150"
DEVICE_DIRECTORY="device/xiaomi/violet"
VENDOR_DRIECTORY="vendor/xiaomi/violet"
HALS_DRIECTORY_SM8150="/hardware/qcom-caf/sm8150"

git clone https://github.com/kmou424/sena_kernel_violet-sm6150 $KERNEL_DIRECTORY && git clone https://github.com/kmou424/device_xiaomi_violet $DEVICE_DRIECTORY && git clone https://github.com/kmou424/vendor_xiaomi_violet $VENDOR_DRIECTORY

#Replace hardware/qcom-caf/hals for sm8150

rm -rf $HALS_DRIECTORY_SM8150/audio $HALS_DRIECTORY_SM8150/display $HALS_DRIECTORY_SM8150/media && git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8150_audio $HALS_DRIECTORY_SM8150/audio && git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8150_display $HALS_DRIECTORY_SM8150/display && git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8150_media $HALS_DRIECTORY_SM8150/media