#!/bin/bash
clear

CACHE=0

function checkanswer() {

  if [ "$answer" != "yes" ] && [ "$answer" != "no" ]; then
       echo
       echo Bad answer, repet...
       sleep 2
       clear
  else
       break
       echo
  fi

}

#CCache
while true;
do
 echo Do you want to use CCache? [yes/no]
 echo HINT: CCache will "help" to decrease build "times" by taking up your hard-drive space
 read answer
 checkanswer
done
if [ "$answer" == "yes" ]; then
    echo How much CCache "do" you want to utilize?
    echo Recommended CCache ranges from 50 to 100 Gigabytes
    read ccsize
    echo
    echo Enter path to directory you want to use "for ccache".
    echo Something like /home/$USER/.ccache
    read ccpath
    #Export
    echo Exporting...
    echo export USE_CCACHE=1 >> ~/.bashrc
    echo export CCACHE_DIR=$ccpath/ >> ~/.bashrc
    prebuilts/misc/linux-x86/ccache/ccache -M $ccsize
    sleep 3
    clear
fi


#Shared library caching
while true;
do
 echo Do you want to use the shared library caching?
 echo HINT: This will "help" to decrease build "times" by using prebuilts .so files (like the chromium prebuilt).
 echo Will start operating after the first build.
 echo HINT: If you use this option, you can not use the chromium prebuilt.
 read answer
 checkanswer
done
if [ "$answer" == "yes" ]; then
    echo Exporting...
    echo export USE_PREBUILT_CACHE=1 >> ~/.bashrc
    sleep 3
    clear
    CACHE=1
fi


#Chromium Prebuilt
if [ "$CACHE" != "1" ]; then
   while true;
   do
    echo Do you want to use the chromium prebuilt?
    echo HINT: This will "help" to decrease build "times" by using the prebuilts chromium files.
    echo Will start operating after the first build.
    read answer
    checkanswer 
   done
   if [ "$answer" == "yes" ]; then
       echo Exporting...
       echo export USE_PREBUILT_CHROMIUM=1 >> ~/.bashrc
       sleep 3
       clear
   fi
fi

clear
