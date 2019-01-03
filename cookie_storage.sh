#!/usr/bin/env bash
#set -x
#######################################
# Created By : Rami642
# Purpose:
# Date: 03/01/19
# Version : 0.0.0
#######################################
DEV=/dev/*

for i in $DEV;
do
if [ -n $dev ];then
    echo $i|grep -hn "sd" &>/dev/null
fi
done
