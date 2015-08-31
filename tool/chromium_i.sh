#!/bin/bash
clear

 if grep -Fxq "export USE_PREBUILT_CHROMIUM=1"  ~/.bashrc; then
  echo Chromiun Prebuilt is already installed...
  sleep 1
 else
  echo Chromium Prebuilt will "help" to decrease build "times" by using the prebuilts chromium files.
  echo Will start operating after the first build.
  sleep 2
  echo Exporting...
  echo export USE_PREBUILT_CHROMIUM=1 >> ~/.bashrc
  echo Done.
  sleep 3
 fi

clear
