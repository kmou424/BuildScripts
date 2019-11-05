#!/bin/bash

. build/envsetup.sh
lunch ion_violet-userdebug
mka bacon -j16 > build.log 2>&1

TIME=`date --date='0 days ago' "+%H:%M:%S"`
DATE=`date --date='0 days ago' "+%Y-%m-%d"`

# Create work root directory
if [ ! -d "~/work" ] then
	mkdir ~/work
fi

# Create log root directory
if [ ! -d "~/work/log" ] then
	mkdir ~/work/log
fi

if [ ! -d "~/work/log/$DATE" ] then
        mkdir ~/work/log/$DATE
        cp build.log ~/work/log/$DATE/$TIME/build.log
else
        cp build.log ~/work/log/$DATE/$TIME/build.log
fi
