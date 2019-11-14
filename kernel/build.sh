#!/bin/bash

COMPILER_PATH=$HOME/work/los/prebuilts

PATH="$COMPILER_PATH/clang/host/linux-x86/clang-r353983b/bin:$COMPILER_PATH/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:${PATH}"
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE_ARM32=$COMPILER_PATH/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi- 
make O=out ARCH=arm64 vendor/violet-perf_defconfig
make -j32 O=out ARCH=arm64 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- && cp out/arch/arm64/boot/*dtb $HOME/work/boot/. && cd $HOME/work && ./g upload boot/*
