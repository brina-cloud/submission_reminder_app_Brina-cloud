#!/bin/bash

#Create the directory .
read -p " Enter your name: " yourName


dir=~/submission_reminder_app_Brina-cloud/submission_reminder_$yourName

if [ ! -d $dir/ ]; then

  mkdir $dir/
  echo -e "\nDIRECTORY ~/submission_reminder_$yourname IS CREATED .....\n"
else
  echo -e "DIRECTORY ARLEADY EXISTS"
fi

  cd $dir/

  if [ ! -d  $dir/app ]; then

   echo -e "Creating the app directory \n"
   mkdir -p $dir/app

  else
     echo -e "APP directory already exists. \n"

  fi
   touch $dir/app/reminder.sh

#Creating modules directory

   if [ ! -d  $dir/modules/ ]; then

    echo -e "Creating the modules directory.... \n"
    mkdir -p $dir/modules/

   else
     echo -e "MODULES directory already exists. \n"

   fi
   touch $dir/modules/functions.sh


# Creating assets directory

  if [ ! -d  $dir/assets/ ]; then

   echo -e "Creating the assets directory.... \n"
   mkdir -p $dir/assets/

  else
     echo -e "APP directory already exists. \n"

  fi
   touch $dir/assets/submissions.txt


 #Creating the config directory.

  if [ ! -d  $dir/config/ ]; then

   echo -e "Creating the config directory....\n"
   mkdir -p $dir/config/

  else
     echo -e "CONFIG directory already exists. \n"

  fi
   touch $dir/config/config.env


  # Creating the startup.sh file

  if [ ! -f  $dir/startup.sh ]; then

   echo -e "Creating the startup.sh file.... \n"
   touch $dir/startup.sh

  else
     echo -e "The startup.sh file already exists. \n"

  fi


