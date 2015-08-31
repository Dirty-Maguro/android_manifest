#!/bin/bash
clear

 if [ -f /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java ]; then
    echo Uninstalling Java...
    sleep 1
    sudo apt-get remove openjdk-7-jdk
    y
    echo OpenJDK Uninstalled...
    sleep 1
 else 
    echo Java is not installed...
    sleep 1
 fi

clear
