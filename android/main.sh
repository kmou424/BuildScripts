#!/bin/bash
#Smart build script
#by kmou424 & kevin

function build()
{
    #thread
    if[ "build_j" == '0' ];then
        $build_j=$(grep 'processor' /proc/cpuinfo | sort -u | wc -l)
    fi
    . build/envsetup.sh
    lunch havoc_violet-userdebug
    mka bacon -j$build_j > build_full.log 2>&1
}

function clean()
{
    . build/envsetup.sh
    mka clean
}

function logcater()
{
    grep -iE 'crash|error|fail|fatal' build_full.log &> build.log

    DATE=`date --date='0 days ago' "+%Y-%m-%d"`
    TIME=`date --date='0 days ago' "+%H-%M-%S"`

    # Create work root directory
    if [ ! -d "~/work/" ]; then
        mkdir ~/work
    fi

    # Create log root directory
    if [ ! -d "~/work/log/" ]; then
	    mkdir ~/work/log
    fi

    # Create log base directory
    if [ ! -d "~/work/log/$DATE/" ]; then
        mkdir ~/work/log/$DATE
    fi

    # Create time base directory
    if [ ! -d "~/work/log/$DATE/$TIME/" ]; then
    	mkdir ~/work/log/$DATE/$TIME
    fi

    cp build.log ~/work/log/$DATE/$TIME/build.log
    cp build_full.log ~/work/log/$DATE/$TIME/build_full.log

    echo 'Your logs have been stored in ~/work/log/'$DATE'/'$TIME' directory'
}


[ $# -eq '0' ] && echo "Argument needed!"
#Variable
build_j='0'
build='0'
clean='0'
log='0'
while [[ $# -ge 1 ]]; do
  case $1 in
    -b|b|build|-build)
      shift
      build='1'
      ;;
    -c|c|clean|-clean)
      shift
      clean='1'
      ;;
    -l|l|log|-log|logcater|-logcater)
      shift
      log='1'
      ;;
    -j|j|thread|-thread)
      shift
      build_j="$1"
      shift
      ;;
    *)
      echo -ne "Wrong argument!"
      exit 1;
      ;;
    esac
  done

[ "$build" == '1' ] && build;
[ "$clean" == '1' ] && clean;
[ "$log" == '1' ] && logcater;
