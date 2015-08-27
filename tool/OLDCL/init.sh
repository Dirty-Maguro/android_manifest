#!/bin/bash
clear

echo I am giving the permissions to the files...
sudo chmod 777 build.sh
sudo chmod 777 dep.sh
sudo chmod 777 repo.sh
sudo chmod 777 setup.sh
sudo chmod 777 source.sh
sudo chmod 777 tweaks.sh
sudo chmod 777 driver.sh
sleep 5


function checkanswer() {

  if [ "$answer" != "yes" ] && [ "$answer" != "no" ]; then
       echo
       echo Bad answer, repet...
       sleep 2
       clear
  else
       break
       echo
  fi

}

#Set-up or no?
while true;
do
 clear
 echo Have you already set-up your machine? [yes/no]
 read answer #yes or no go here
 checkanswer
done


#Checking the answer
if [ "$answer" == "yes" ]; then 
     BUILD="yes"

else 
     while true;
     do
       echo Do you want to set-up the machine now? [yes/no]
       read answer 
       checkanswer
     done

     if [ "$answer" == "yes" ]; then
           echo export INIT=true >> ~/.bashrc
	   BUILD="yes"
           ./setup.sh
     else 
           BUILD="no"
     fi
fi
echo

#Build?
if [ "$BUILD" == "yes" ]; then
     while true;
     do
      echo Do you want to build now? [yes/no]
      read answer
      checkanswer
     done

      if [ "$answer" == "yes" ]; then
           ./tweaks.sh
           ./build.sh
      else 
         echo
         echo To build DirtyUnicorns later, initialize the DU Build Wizard "(in the root of your source)" by typing":"
         echo "./build.sh"
         echo Bye Bye.
      fi
else 
     echo Your machine is not set, you can not build the DirtyUnicorns.
     echo Set-up you machine please.
     echo To use the automatic setup, use the init.sh file.
     echo Bye Bye.
     sleep 6
fi

clear
echo Finished... 
sleep 3
clear

