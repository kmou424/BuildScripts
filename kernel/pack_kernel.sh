#!/bin/bash

KERNEL_NAME=$1

mkdir kerneltemp
cp -r flasher/* kerneltemp
cp out/arch/arm64/boot/dtbo.img kerneltemp
cp out/arch/arm64/boot/Image.gz-dtb kerneltemp
cd kerneltemp
sed -i "s/SenaKernel/$KERNEL_NAME/g" anykernel.sh
zip -q -r $KERNEL_NAME.zip *
mv *.zip ..
cd .. && rm -rf kerneltemp
