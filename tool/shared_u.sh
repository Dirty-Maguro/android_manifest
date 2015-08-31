#!/bin/bash
clear

 if grep -Fxq "export USE_PREBUILT_CACHE=1"  ~/.bashrc; then
    echo Unistalling shared library caching...
    sleep 2
    sed -i /USE_PREBUILT_CACHE/d  ~/.bashrc
    echo Shared library caching Uninstalled...
    sleep 1
 else
    echo Shared library caching is not installed...
    sleep 1
 fi

clear

