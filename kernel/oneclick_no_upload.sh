#!/bin/bash

KERNEL_NAME=$1

printf "* Clean up previous build files\n\n"
#rm -rf out
printf "* Begin to build"
printf "* Build Thread: $2 \n\n"
bash prepare.sh $1 && bash build.sh $2 && bash pack_dtbo.sh && bash pack_kernel.sh $KERNEL_NAME && bash succeed.sh
