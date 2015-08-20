#!/bin/bash
clear

 rm -r ~/android-sdk-linux
 sed -i /PATH=${PATH}/d  ~/.bashrc
 sed -i /platform-tools/d  ~/.bashrc 
 sed -i /Android/d ~/.bashrc 
 echo Android SDK Uninstalled...
 sleep 1

clear
