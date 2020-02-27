#!/bin/bash

KERNEL_VERSION=$1

printf "* Clean up previous build files\n\n"
rm -rf out
printf "* Begin to build"
printf "* Build Thread: $2 \n\n"
bash build.sh $2 && bash pack_dtbo.sh && bash pack_kernel.sh $KERNEL_VERSION
