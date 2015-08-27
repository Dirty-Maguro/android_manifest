#!/bin/bash
clear

source ~/.bashrc
if [ $INIT == "true" ]; then 

 CONFIG=0

 function rightbit() {
    echo
    #Wait before installing the dependencies
    echo Installing Dependencies in 7 Seconds...
    sleep 6
    echo Ok, let\'s move on.
    sleep 1
    echo

    #Installing the dependencies
    sudo apt-get update

    #OpenJDK
    sudo apt-get install openjdk-7-jdk
    y
    javacheck

    #Python
    if [ ! -f /usr/bin/python ]; then 
       sudo apt-get install python
       y
    fi

    #Other
    sudo apt-get update && sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32ncurses5-dev lib32z1 lib32ncurses5 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z1-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib tofrodos python-markdown libxml2-utils xsltproc readline-common libreadline6-dev libreadline6 lib32readline-gplv2-dev libncurses5-dev lib32readline5 lib32readline6 libreadline-dev libreadline6-dev:i386 libreadline6:i386 bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev libsdl1.2-dev libesd0-dev squashfs-tools pngcrush schedtool libwxgtk2.8-dev python lzop
    y
    sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so

    clear
   
    echo Installing USB Drivers...
    ./driver.sh
    sudo chmod a+r /etc/udev/rules.d/51-android.rules

    clear

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

    clear
    echo Dependencies have been installed!
    sleep 3
    clear
 }

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

 function SDKrules() {
    echo "#Android tools" >> ~/.bashrc
    echo export PATH=${PATH}:~/android-sdk-linux/tools >> ~/.bashrc
    echo export PATH=${PATH}:~/android-sdk-linux/platform-tools >> ~/.bashrc
    echo export PATH=${PATH}:~/bin >> ~/.bashrc
    echo PATH="$HOME/android-sdk-linux/tools:$HOME/android-sdk-linux/platform-tools:$PATH" >> ~/.profile 
 }
 
 
 if [ `getconf LONG_BIT` = "32" ]; then
      echo The system have to be a 64bit
      sleep 2
      exit 0
 else
      echo 64Bit System";" you can build the du.
      sleep 0.5
      rightbit 
 fi

else

 echo Please run the init.sh
 sleep 1
 exit 0

fi





