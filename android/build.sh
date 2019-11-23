#!/bin/sh

. build/envsetup.sh
lunch aosip_violet-userdebug
mka bacon -j16 > build_full.log 2>&1
