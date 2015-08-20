#!/bin/bash

 clear

 sudo chmod 777 /etc/udev/rules.d/51-android.rules

 echo Installing the driver...
 sleep 2

 echo "#Acer" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0502", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#ASUS" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0b05", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Dell" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="413c", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Foxconn" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0489", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Garmin-Asus" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="091E", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Google" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#HTC" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0bb4", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Huawei" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="12d1", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#K-Touch" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="24e3", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#KT Tech" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="2116", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Kyocera" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0482", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Lenevo" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="17EF", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#LG" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="1004", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Motorola" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="22b8", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#NEC" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0409", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Nook" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="2080", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Nvidia" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0955", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#OTGV" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="2257", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Pantech" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="10A9", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Philips" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0471", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#PMC-Sierra" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="04da", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Qualcomm" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="05c6", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#SK Telesys" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="1f53", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Samsung" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="04e8", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Sharp" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="04dd", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Sony Ericsson" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0fce", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#Toshiba" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="0930", MODE="0666" >> /etc/udev/rules.d/51-android.rules
 echo ""  >> /etc/udev/rules.d/51-android.rules
 echo "#ZTE" >> /etc/udev/rules.d/51-android.rules
 echo SUBSYSTEM=="usb", ATTR{idVendor}=="19D2", MODE="0666" >> /etc/udev/rules.d/51-android.rules

 echo Driver Installed.
 sleep 2
 clear


