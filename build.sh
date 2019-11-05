#!/bin/bash

. build/envsetup.sh
lunch havoc_violet-userdebug
mka bacon -j16 > build_full.log 2>&1

grep -iE 'crash|error|fail|fatal' build_full.log &> build.log

DATE=`date --date='0 days ago' "+%Y-%m-%d"`
TIME=`date --date='0 days ago' "+%H-%M-%S"`

# Create work root directory
if [ ! -d "~/work" ]
then
	mkdir ~/work
fi

# Create log root directory
if [ ! -d "~/work/log" ]
then
	mkdir ~/work/log
fi

# Create log base directory
if [ ! -d "~/work/log/$DATE" ]
then
        mkdir ~/work/log/$DATE
fi

        cp build.log ~/work/log/$DATE/$TIME/build.log
	cp build_full.log ~/work/log/$DATE/$TIME/build_full.log

echo 'Your logs have been stored in ~/work/log/$DATE/$TIME directory'
