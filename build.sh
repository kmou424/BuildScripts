#!/bin/bash

. build/envsetup.sh
lunch ion_violet-userdebug
mka bacon -j16 > build_full.log 2>&1

grep -iE 'crash|error|fail|fatal' build_full.log &> build.log

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
	cp build_full.log ~/work/log/$DATE/$TIME/build_full.log
else
        cp build.log ~/work/log/$DATE/$TIME/build.log
	cp build_full.log ~/work/log/$DATE/$TIME/build_full.log
fi

echo 'Your logs have been stored in ~/work/log/$DATE/$TIME directory"
