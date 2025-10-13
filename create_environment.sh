#!/bin/bash

#Create the directory .


read -p " Enter your name: " yourName
if [ ! -d ~/submission_reminder_$yourName/ ]; then

  mkdir ~/submission_reminder_$yourName/
  echo -e "\nDIRECTORY ~/submission_reminder_$yourname IS CREATED .....\n"
else
  echo -e "DIRECTORY ARLEADY EXISTS"
fi

  cd ~/submission_reminder_$yourName/

  if [ ! -d  ~/submission_reminder_$yourName/app ]; then

   echo -e "Creating the app directory \n"
   mkdir -p ~/submission_reminder_$yourName/app

  else
     echo -e "APP directory already exists. \n"

  fi
   touch ~/submission_reminder_$yourName/app/reminder.sh

#Creating modules directory

   if [ ! -d  ~/submission_reminder_$yourName/modules/ ]; then

    echo -e "Creating the modules directory.... \n"
    mkdir -p ~/submission_reminder_$yourName/modules/

   else
     echo -e "MODULES directory already exists. \n"

   fi
   touch ~/submission_reminder_$yourName/modules/functions.sh


# Creating assets directory

  if [ ! -d  ~/submission_reminder_$yourName/assets/ ]; then

   echo -e "Creating the assets directory.... \n"
   mkdir -p ~/submission_reminder_$yourName/assets/

  else
     echo -e "APP directory already exists. \n"

  fi
   touch ~/submission_reminder_$yourName/assets/submissions.txt


 #Creating the config directory.

  if [ ! -d  ~/submission_reminder_$yourName/config/ ]; then

   echo -e "Creating the config directory....\n"
   mkdir -p ~/submission_reminder_$yourName/config/

  else
     echo -e "CONFIG directory already exists. \n"

  fi
   touch ~/submission_reminder_$yourName/config/config.env


  # Creating the startup.sh file

  if [ ! -f  ~/submission_reminder_$yourName/startup.sh ]; then

   echo -e "Creating the startup.sh file.... \n"
   touch ~/submission_reminder_$yourName/startup.sh

  else
     echo -e "The startup.sh file already exists. \n"

  fi


