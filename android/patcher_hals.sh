#!/bin/bash

HALS_DRIECTORY_SM8150="/hardware/qcom-caf/sm8150"

#Replace hardware/qcom-caf/hals for sm8150

rm -rf $HALS_DRIECTORY_SM8150/audio $HALS_DRIECTORY_SM8150/display $HALS_DRIECTORY_SM8150/media && git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8150_audio $HALS_DRIECTORY_SM8150/audio && git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8150_display $HALS_DRIECTORY_SM8150/display && git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8150_media $HALS_DRIECTORY_SM8150/media