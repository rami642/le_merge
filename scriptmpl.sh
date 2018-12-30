#!/usr/bin/env bash

################################################
# created by : rami642
# purpose: template generation for script
# date       : 30.12.18
# version    : 0.0.1
###############################################

#Vars
#conf vars
shabeng="/usr/bin/env"
script_name="newscript.sh"
extension="sh"
Hash="#"
Date="Date: $(date +%d/%m/%y)"
Ver="Version : 0.0.0"
Time=1
Purp="Purpose: "
Auth="Created By : "
line="#######################################"

#msg vars
msg_start="Started!"
msg_end="FIN"
msg_create="Creating Script Template"

##############################################################################
#This part is a msg that the template starting

printf "%s \n" $line
printf "%s \n" $msg_start
printf "%s \n" $line

#this is a deley


	sleep $Time

#this is the template of the script

printf "%s \n" $msg_create
printf "%s \n" "#!$shabeng" > "$script_name\.$extension"
printf "%s \n" $line >> "$script_name\.$extension"
printf "%s \n" "$Hash $Auth" >> "$script_name\.$extension"
printf "%s \n" "$Hash $Purp" >> "$script_name\.$extension"
printf "%s \n" "$Hash $Date" >> "$script_name\.$extension"
printf "%s \n" "$Hash $Ver" >> "$script_name\.$extension"
printf "%s \n" $line >> "$script_name\.$extension"

#deley again

	sleep $Time

#ending msg

printf "%s \n" $line
printf "%s \n" $msg_end
printf "%s \n" $line

