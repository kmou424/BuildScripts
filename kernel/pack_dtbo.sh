#!/bin/bash
mkdir utils && cd utils
proxychains4 wget https://android.googlesource.com/platform/system/libufdt/+archive/master/utils.tar.gz && tar vxzf utils.tar.gz && rm -rf utils.tar.gz
cd ..
python utils/src/mkdtboimg.py create out/arch/arm64/boot/dtbo.img out/arch/arm64/boot/dts/qcom/*.dtbo && rm -rf utils
