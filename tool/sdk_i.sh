#!/bin/bash
clear

if [ -d  ~/android-sdk-linux ]; then
 echo Android SDK is already installed...
 sleep 1
else
 #ANDROID SDK
 echo Downloading Android SDK...
 sleep 1
 wget -qO- http://dl.google.com/android/android-sdk_r24.3.4-linux.tgz  | tar xvz -C ~/
 clear
 echo Exporting rules "for" android SDK
 SDKrules
 echo
 echo done.
 sleep 1

 function SDKrules() {
    echo "#Android tools" >> ~/.bashrc
    echo "export PATH=""$""{PATH}"":~/android-sdk-linux/tools" >> ~/.bashrc
    echo "export PATH=""$""{PATH}"":~/android-sdk-linux/platform-tools" >> ~/.bashrc
    echo "export PATH=""$""{PATH}"":~/bin" >> ~/.bashrc
    echo "PATH=""$""HOME/android-sdk-linux/tools:""$""HOME/android-sdk-linux/platform-tools:""$""PATH" >> ~/.profile 
 }
fi

clear




