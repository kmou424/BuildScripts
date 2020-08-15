#!/bin/bash

COMPILER_PATH=$HOME/work/lineageos/prebuilts

PATH="$HOME/work/lineageos/prebuilts/clang/host/linux-x86/clang-r383902c/bin:$COMPILER_PATH/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:${PATH}"
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE_ARM32=$COMPILER_PATH/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi- 
make O=out ARCH=arm64 vendor/violet-perf_defconfig
make $1 O=out ARCH=arm64 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android-
