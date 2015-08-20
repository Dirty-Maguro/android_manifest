#!/bin/bash
clear

 #Checking folder
 while true;
 do

 #Folder Source
 echo Where "do" you want to initialized DU source? 
 sleep 0.5
 echo Enter the desired directory name similar to this:
 sleep 0.5
 echo "/home/$USER/du or /media/$USER/yourdrive/du"
 read dupath
 sleep 2

 #Checking folder source
 if [ -d "$dupath" ]; then 
     echo
     echo This path is alredy used.
     echo Are you sure you have not already been the source?
     sleep 2
     echo
     echo Choose another folder please.
     sleep 1
     echo
 else
     echo $dupath >> temp.txt
     break
 fi

 done

 #Checking type of source
 while true;
 do
  #Lollipop or Lollipop-Caf
  clear
  echo Which sources you want to download? [lollipop/lollipop-caf]
  read typesource 
  if [ "$typesource" != "lollipop" ] && [ "$typesource" != "lollipop-caf" ]; then
         echo Wrong choice. Repeat.
         sleep 1
  else
     break
  fi
 done

 clear

 #Wait before initializing DU Source
 echo Creating and Initializing DU Source at $dupath in 7 seconds...
 sleep 6
 echo Ok, let\'s move on. 
 sleep 1
 echo
 clear

 #Initializing DU Source
 mkdir -p $dupath
 cd $dupath
 repo init -u https://github.com/DirtyUnicorns/android_manifest.git -b $typesource
 clear
 echo DU Source Code has been initialized!
 sleep 2
 clear

 #Set-up the jobs
 echo Enter number of "jobs" to repo "sync" with.
 echo Enter 0 "for" use the default option
 echo Type 4 "for" connections lower than 15mbps
 echo Type 6 "for" connections ranging from 20-50mbps
 echo Type 16 "for" anything "more" than 100mbps
 read dujobs
 echo
  
 #Wait before Sync
 echo Syncing/Downloading in 7 seconds...
 sleep 6
 echo Ok, let\'s move on. 
 sleep 1
 clear
        
 #Sync 
 echo
 if [ "$dujobs"==0 ]; then
       echo Syncing/Downloading start...
       echo Using the default number of the "jobs"
       repo sync
  else
       echo Syncing/Downloading start...
       echo Using $dujobs "jobs"
       repo sync -j$dujobs
 fi
 clear
               
 echo Sync Complete
 echo Let\'s move on.
 sleep 2
 clear

