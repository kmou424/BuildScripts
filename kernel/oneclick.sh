#!/bin/bash

BRANCH=$1
KERNEL_VERSION=$2

printf "* Clean up previous build files\n\n"
rm -rf out
printf "* Begin to build\n\n"
bash build.sh && bash pack_dtbo.sh && bash pack_kernel.sh $KERNEL_VERSION
printf "* Uploading kernel\n\n"

mv SenaKernel* ../SenaKernel/$1
cd ../SenaKernel/$1
git add .
git commit -m "Auto Upload $KERNEL_VERSION

File Name: $(ls SenaKernel-$KERNEL_VERSION*)
MD5: $(md5sum SenaKernel-$KERNEL_VERSION*)
SHA1: $(sha1sum SenaKernel-$KERNEL_VERSION*)
"
git push --force
printf "* Upload succeed\n"
