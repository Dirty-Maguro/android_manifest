#!/bin/bash

clear

  sudo chmod 777 /etc/udev/rules.d/51-android.rules

  if grep -Fxq "SUBSYSTEM==usb, ATTR{idVendor}==18d1, MODE=0666" /etc/udev/rules.d/51-android.rules; then
  	echo Uninstalling USB Driver...
        sleep 1
   	> /etc/udev/rules.d/51-android.rules
 	echo Driver Uninstalled...
  	sleep 1
  else
        echo USB Driver is not installed
	sleep 1
  fi

clear

