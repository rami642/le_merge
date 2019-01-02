#!/usr/bin/env bash
#######################################
# Created By :
# Purpose:
# Date: 02/01/19
# Version : 0.0.0
#######################################
Number=9

while true
    do
    read -p "please guess the number: " guess
    if [ $guess == $Number ];then
            echo " you have guessed correctly"
            continue
    fi
done
