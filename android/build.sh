#!/bin/sh

. build/envsetup.sh
lunch havoc_violet-userdebug
mka bacon -j16 > build_full.log 2>&1 && bash logcater.sh
