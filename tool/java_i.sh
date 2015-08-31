#!/bin/bash
clear

 if [ -f /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java ]; then
     echo Java is already installed...
     sleep 1
 else
 CONFIG=0
 echo Installing OpenJDK...
 sleep 1

 #OpenJDK
 sudo apt-get install openjdk-7-jdk
 y
 javacheck
 
 function javacheck() {
    if [ -f /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java ]; then
       if [ -f /usr/lib/jvm/java-7-oracle/jre/bin/java ]; then
          CONFIG=1
          echo Configure java please.
          sleep 1
          javaconfig
       fi
    fi

    if [ -f /usr/lib/jvm/java-7-oracle/jre/bin/javac ]; then
       if [ -f /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/javac ]; then
          CONFIG=2
          echo Configure javac please.
          sleep 1
          javaconfig
       fi
    fi

    clear
 }


 function javaconfig() {
    case "$CONFIG" in

    1) clear
    sudo update-alternatives --config java   
    ;;

    2) clear
    sudo update-alternatives --config javac
    ;;
   
    *) clear
    echo Error...
    sleep 0.5
    exit 0
    ;;
 
    esac
 }

 echo OpenJDK Installed...
 sleep 1
fi

clear
