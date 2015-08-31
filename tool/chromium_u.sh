#!/bin/bash
clear

 if grep -Fxq "export USE_PREBUILT_CHROMIUM=1"  ~/.bashrc; then
    echo Uninstalling Chromiun Prebuilt...
    sleep 1
    sed -i /USE_PREBUILT_CHROMIUM/d  ~/.bashrc
    echo Chromiun Prebuilt Uninstalled...
    sleep 1
 else
    echo Chromiun Prebuilt is not installed...
    sleep 1
 fi

clear

