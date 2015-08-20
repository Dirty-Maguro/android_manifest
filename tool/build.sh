#! /bin/bash

source ~/.bashrc

# No scrollback buffer
 echo -e '\0033\0143'

# Obtain intial time of script startup
res1=$(date +%s.%N)

clear

function checkanswer() {

  if [ "$answer" != "yes" ] && [ "$answer" != "no" ] && [ "$answer" != "Yes" ] && [ "$answer" != "No" ]; then
       echo
       echo Bad answer, repet...
       sleep 2
       clear
  else
       break
       echo
  fi
}

#Setting up build environment
echo Setting up build environment...

read dupath < temp.txt

if [ "$dupath" == "$PWD" ]; then
      source build/envsetup.sh
else
      cd --
      cd $dupath
      source build/envsetup.sh
fi

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


#Lunch device
echo Choose your device from the lunch menu...
sleep 2
lunch
sleep 3
clear

# Start compilation
echo 
echo Starting compilation of DirtyUnicorns...  
echo 
echo Enter the number of threads you want to use "for compilation"
echo If you unsure on what to select, enter 0
read threads

clear

if [ "$threads" == "0" ]; then
     time mka bacon
else
     time make -j$threads
fi

echo
# Get elapsed time
res2=$(date +%s.%N)
echo 
echo "Total time elapsed: $(echo "($res2 - $res1) / 60"|bc ) minutes ($(echo "$res2 - $res1"|bc ) seconds)"
echo 
