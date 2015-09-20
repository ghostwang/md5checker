#!/bin/sh
if [ $# != 2 ];then
    echo "param error"
fi

filename=$1
orgmd5=$2

filemd5=`md5 $filename|awk '{print $4}'`

if [ "$orgmd5" = "$filemd5" ];then
    echo "pass"
else
    echo "not same"
fi
