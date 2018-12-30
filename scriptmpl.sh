#!/usr/bin/env bash

################################################
# created by : rami642
# purpose: template generation for script
# date       : 30.12.18
# version    : 0.0.2
###############################################

#Vars
#conf vars
shabeng="/usr/bin/env bash"
script_name="newscript.sh"
extension="sh"
Hash="#"
Date="Date: $(date +%d/%m/%y)"
Ver="Version : 0.0.0"
Time="2"
Purp="Purpose: "
Auth="Created By : "
line="#######################################"

#msg vars
msg_start="Started!"
msg_end="FIN"
msg_create="Generating Script Template"

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
echo $msg_end
printf "%s \n" $line

	sleep $Time

#premissions and name change
chmod +x ./scriptmpl.sh ; mv "$script_name\.$extension" newscript.sh ; vim newscript.sh 
