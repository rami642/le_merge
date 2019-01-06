#!/usr/bin/env bash
#set -x
#######################################
# Created By : Rami642
# Purpose: check files
# Date: 06/01/19
# Version : 0.0.1
#######################################
passwd=" /etc/passwd /etc/group /etc/shadow /etc/gshdow"

for i in $passwd
do
    if [ -f $i ];then
        echo $i is a regular file
    else
        echo $i is not a regular file
    fi
done

for i in $passwd
do
    if [ -n $i ];then
        echo "$i Exists"
            else
        echo "$i Dont Exists"
    fi
done

