#!/usr/bin/env bash 
####################################### 
# Created By : Rami642  
# Purpose: automated partition setup
# Date: 10/02/19 
# Version : 0.0.1 
#######################################
set -x
#Variables /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
disk_array=($(ls /dev |grep sd ))
Path="/dev"
Time="0.5"


#Functions /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
fdisk_lvm_change (){
	local disk=$1
	sleep $Time
	fdisk $disk << EOF
n
p
1
1


w
EOF
	echo "Finshed Editing Disk $disk with fdisk"

}
######
#Main /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
######
for disk in  ${disk_array[@]}
		do
		fdisk_lvm_change $Path/$disk
		done
