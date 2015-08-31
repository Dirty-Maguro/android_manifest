#!/bin/bash
clear

 if grep -Fxq "export USE_PREBUILT_CACHE=1"  ~/.bashrc; then
   echo Shared library caching is already installed...
   sleep 1
 else
   echo Shared library caching will "help" to decrease build "times" by using prebuilts .so files (like the chromium prebuilt).
   echo Will start operating after the first build.
   sleep 2
   echo Exporting...
   echo export USE_PREBUILT_CACHE=1 >> ~/.bashrc
   sleep 3
   echo Done.
   clear
 fi

clear

