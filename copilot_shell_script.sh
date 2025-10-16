#!/usr/bin/env bash

#Replace assignment name in config/config.env


loc=~/submission_reminder_app_Brina-cloud/submission_reminder_Sabrina/config/config.env
# sourcing the config.env 
source "$loc"
# To input the new assignment 

read -p "Enter the new assignment: " new

if [[ $ASSIGNMENT == $new ]]; then
   echo -e "WRONG ASSIGNMENT, Enter the another assignment"
else
   echo -e "....Updating assignment to $new "
fi

# Change the value in variable ASSIGNMENT to new assigned variable.
 sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=\"$new\"/" "$loc"


