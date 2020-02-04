#!/bin/bash

KERNEL_VERSION=$1

mkdir kerneltemp
cp -r flasher/* kerneltemp
cp out/arch/arm64/boot/dtbo.img kerneltemp
cp out/arch/arm64/boot/Image.gz-dtb kerneltemp
cd kerneltemp
sed -i "s/SenaKernel/SenaKernel $KERNEL_VERSION/g" anykernel.sh
zip -q -r SenaKernel-$KERNEL_VERSION.zip *
mv *.zip ..
cd .. && rm -rf kerneltemp
