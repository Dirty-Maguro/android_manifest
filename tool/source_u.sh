#!/bin/bash
clear

 #Checking folder
 while true;
 do

 #Folder Source
 echo In "which" folder you have initialized the source?
 sleep 0.5
 echo Enter the directory name "in" this way":"
 sleep 0.5
 echo "/home/$USER/du or /media/$USER/yourdrive/du"
 read dupath
 sleep 2

 #Checking folder source
 if [ -d "$dupath" ]; then 
     rm -r $dupath
     break
 else
     echo The folder does not exist
     sleep 1
     clear
 fi
 done

clear

