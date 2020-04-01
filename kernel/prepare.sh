#!/bin/bash

sed -i "s/Marisa/$1/g"  arch/arm64/configs/vendor/violet-perf_defconfig
