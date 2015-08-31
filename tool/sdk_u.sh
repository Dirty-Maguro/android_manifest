#!/bin/bash
clear

if [ -d  ~/android-sdk-linux ]; then
 echo Unistalling android SDK...
 sleep 2
 rm -r ~/android-sdk-linux
 sed -i /PATH=${PATH}/d  ~/.bashrc
 sed -i /platform-tools/d  ~/.bashrc 
 sed -i /Android/d ~/.bashrc 
 echo Android SDK Uninstalled...
 sleep 1
else
 echo Android SDK is not installed...
 sleep 1
fi

clear
