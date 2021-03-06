#!/usr/bin/env bash
#set -x
################################################
# created by : rami642
# purpose: template generation for script
# date       : 30.12.18
# version    : 0.2.2
###############################################

#Vars
#conf vars
shabeng="/usr/bin/env bash"
Comment="#"
Date="Date: $(date +%d/%m/%y)"
Ver="Version : 0.0.0"
Time="2"
Purp="Purpose: "
Auth="Created By : Rami642 "
line="#######################################"

##############################################################################

read -p "Please enter script name: " script_name

#msg vars
 msg_start="Started!"
 msg_end="Script Ready, Opening $script_name"
 msg_create="Generating Script Template"
 msg_name="Script Name : $script_name"

#Test Functions
if [ -z $script_name ];then
	echo "No File Name"
	exit 1
fi

if [ -e $script_name ];then
	echo "File Exists"
	exit 0
fi
##############################################################################
#This part is a msg that the template starting

printf "%s \n" $line
echo $msg_start
printf "%s \n" $line

#this is a deley

	sleep $Time

printf "%s \n" $line
echo $msg_create
printf "%s \n" $line

	sleep $Time

#this is the template of the script
printf "%s \n" "#!$shabeng" > "$script_name"
printf "%s \n" $line >> "$script_name"
printf "%s \n" "$Comment $Auth" >> "$script_name"
printf "%s \n" "$Comment $Purp" >> "$script_name"
printf "%s \n" "$Comment $Date" >> "$script_name"
printf "%s \n" "$Comment $Ver" >> "$script_name"
printf "%s \n" $line >> "$script_name"

#deley again

	sleep $Time

#nameing msg

printf "%s \n" $line
echo $msg_name
printf "%s \n" $line

	sleep $Time

#ending msg
printf "%s \n" $line
echo $msg_end
printf "%s \n" $line

	sleep $Time

#premissions and actions
chmod +x ./scriptmpl.sh ; vim $script_name
