#!/usr/bin/env bash
#######################################
# Created By :
# Purpose:
# Date: 02/01/19
# Version : 0.0.0
#######################################
i=0
while [ $i -le 10 ]
do
    echo running until loop till i get 0, now at $i;
      let i++;sleep 1
done

