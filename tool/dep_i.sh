#!/bin/bash
clear

    #Wait before installing the dependencies
    echo Installing Dependencies...
    sleep 2
    echo

    #Installing the dependencies
    sudo apt-get update
    sleep 0.5
    clear

    #Python
    if [ ! -f /usr/bin/python ]; then 
       sudo apt-get install python
       y
    fi
    sleep 0.5
    clear

    #Other
    sudo apt-get update && sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32ncurses5-dev lib32z1 lib32ncurses5 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z1-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib tofrodos python-markdown libxml2-utils xsltproc readline-common libreadline6-dev libreadline6 lib32readline-gplv2-dev libncurses5-dev lib32readline5 lib32readline6 libreadline-dev libreadline6-dev:i386 libreadline6:i386 bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev libsdl1.2-dev libesd0-dev squashfs-tools pngcrush schedtool libwxgtk2.8-dev python lzop
    y
    sleep 0.5
    sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
    clear

    echo Dependencies have been installed!
    sleep 2

clear









