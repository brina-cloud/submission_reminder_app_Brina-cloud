#!/bin/bash


 # Change the permissions of files with .sh extension in the ~/submission_reminder_>


 dir=~/submission_reminder_app_Brina-cloud/submission_reminder_Sabrina/
  read -p  "DO YOU WANT TO CHANGE THE PERMISSIONS OF ALL FILE IN .SH: " ans
   if [[ $ans == 'Y' || $ans == 'y' ]]; then
     find $dir -type f -name '*.sh' -print0 | xargs -0 chmod 744 ;
     echo -e "\nCHANGING PERMISIONS ......\n"
     echo -e "********************************\n"
   else
     echo -e "\nNO PERMISSIONS CHANGED \n"

   fi

#Create the rem for file to be executed....


 rem=~/submission_reminder_app_Brina-cloud/submission_reminder_Sabrina/app/reminder.sh
 if [ -f $rem ]; then
     echo -e "\nStarting the reminder app ---------------------------- \n"

     bash $rem

 else
    touch -p $rem
    echo -e " The reminder.sh doesn't exist and lacks content \n"
 fi


