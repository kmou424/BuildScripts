#!/bin/bash

BRANCH=$1
KERNEL_NAME=$2

printf "* Clean up previous build files\n\n"
rm -rf out
printf "* Begin to build"
printf "* Build Thread: $3 \n\n"
bash build.sh $3 && bash pack_dtbo.sh && bash pack_kernel.sh $KERNEL_NAME
printf "* Uploading kernel\n\n"

mv SenaKernel* ../SenaKernel/$BRANCH
cd ../SenaKernel/$BRACNH
git add .
git commit -m "Auto Upload $KERNEL_NAME

File Name: $(ls $KERNEL_NAME*)
MD5: $(md5sum $KERNEL_NAME*)
SHA1: $(sha1sum $KERNEL_NAME*)
"
git push --force
printf "* Upload succeed\n"
