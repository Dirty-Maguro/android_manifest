#! /bin/bash

function checktweaks() {

  if [ "$tweaks" != "yes" ] && [ "$tweaks" != "no" ]; then
       echo
       echo Bad answer, repet...
       sleep 2
       clear
  else
       break
       echo
  fi

}

source ~/.bashrc
if [ $INIT != "true" ]; then
   echo You have not used the installation tool.
   sleep 0.75
   echo You can build.
   sleep 0.75

 while true;
 do
   echo Before you start, you want to configure the various tweaks such as ccache, chromium prebuilt etc? [yes/no]
   read tweaks
   checktweaks

   if [ "$tweaks" == yes ]
      ./manifest/tool/CL/tweaks.sh
      break
   fi
 done
fi

TYPE=0

# No scrollback buffer
echo -e '\0033\0143'

# Obtain intial time of script startup
res1=$(date +%s.%N)

clear

function checkanswer() {

  if [ "$answer" != "1" ] && [ "$answer" != "2" ]; then
       echo
       echo Bad answer, repet...
       sleep 2
       clear
  else
       break
       echo
  fi

}

function checklunc() {

  case "$string" in

    *) TYPE=1
       ;;

    flo) ;;
    flounder) ;;
    grouper) ;;
    hammerhead) ;;
    mako) ;;
    manta) ;;
    shamu) ;;

  esac

}

#Setting up build environment
echo Setting up build environment...
source build/envsetup.sh
echo
echo Build environment has been set-up
sleep 3
clear

# Confirm utilizing the 'make clean' function
while true;
do
 echo \n\n  Do you want to delete the /out directory?\n
 echo "  1. Yes"
 echo "  2. No"
 echo 
 read answer
 checkanswer
done
if [ "$answer" == "1" ]; then
	echo 
        echo Removing files compiled from previous compilations - Cleaning... 
	echo 
        make clean
else
	echo 
	echo Continuing compilation of DirtyUnicorns without deleting old build files
	echo 
fi
sleep 3
clear

source ~/.bashrc
if [ $DEV == "true" ]; then 

   echo Official Developer...
   sleep 0.7

   echo You want to build the "du for which" smartphone?
   echo Enter the codename...
   read string

   checklunc

   if [ "$TYPE" == "1" ]; then
        clear
        echo Device not official supported.
        echo You can "do" only unofficial builds.
        echo
        sleep 1
        clear
        lunch du_"$string"-userdebug

   else
        while true;
        do

          echo What kind of building you want to do? [OFFICIAL/TEST/WEEKLIES]
          read Type
          
          if [ "${Type^^}" != OFFICIAL ] && [ "${Type^^}" != TEST ] && [ "${Type^^}" != WEEKLIES ]; then
             echo Type Error
             sleep 1
             clear
          else
             export DU_BUILD_TYPE="$Type"
             break
          fi
        done
        clear
        lunch du_"$string"-userdebug
    fi
    sleep 3
    clear

else
    
    echo Unofficial Developers...
    #Lunch device
    echo Choose your device from the lunch menu...
    sleep 2
    lunch
    sleep 3
    clear

fi


# Start compilation
echo 
echo Starting compilation of DirtyUnicorns...  
echo 
echo Enter the number of threads you want to use "for compilation"
echo If you unsure on what to select, enter 0
read threads

if [ "$threads" == "0" ]; then
     time make bacon
else
     time make -j$threads
fi

echo
# Get elapsed time
res2=$(date +%s.%N)
echo 
echo "Total time elapsed: $(echo "($res2 - $res1) / 60"|bc ) minutes ($(echo "$res2 - $res1"|bc ) seconds)"
echo 
