#!/bin/bash
clear

     echo HINT: CCache will "help" to decrease build "times" by taking up your hard-drive space
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

 

