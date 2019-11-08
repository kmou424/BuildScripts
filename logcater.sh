#!/bin/sh

grep -iE 'crash|error|fail|fatal' build_full.log &> build.log

DATE=`date --date='0 days ago' "+%Y-%m-%d"`
TIME=`date --date='0 days ago' "+%H-%M-%S"`

# Create work root directory
if [ ! -d "$HOME/work/" ]; then
	mkdir $HOME/work
fi

# Create log root directory
if [ ! -d "$HOME/work/log/" ]; then
	mkdir $HOME/work/log
fi

# Create log base directory
if [ ! -d "$HOME/work/log/$DATE/" ]; then
        mkdir $HOME/work/log/$DATE
fi

# Create time base directory
if [ ! -d "$HOME/work/log/$DATE/$TIME/" ]; then
	mkdir $HOME/work/log/$DATE/$TIME
fi

cp build.log $HOME/work/log/$DATE/$TIME/build.log
cp build_full.log $HOME/work/log/$DATE/$TIME/build_full.log

echo 'Your logs have been stored in ~/work/log/'$DATE'/'$TIME' directory'
