#!/usr/bin/env bash
#######################################
# Created By :Rami642
# Purpose:  Learning IF
# Date: 02/01/19
# Version : 0.0.1
#######################################
if [ -z $1 ];then
	echo "****rental Unknow****"
elif [ -n $1 ];then
	rental=$1
fi
#case parameters
case $rental in
	"car" | "CAR" | "Car") echo "for $rental rental is 100 nis" ;;
	"van" |"Van") echo " for $rental rental is 500 nis " ;;
	*) echo "Sorry no $rental found" ;;

esac
