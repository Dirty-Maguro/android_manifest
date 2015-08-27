#!/bin/bash
clear

source ~/.bashrc
if [ $INIT == "true" ]; then 

 #Check for repo
 echo Checking repo...
 if [ -d  ~/bin ]; then
    REPOFCHECK=1
    if [ -f ~/bin/repo ]; then
       REPOFCHECK=2
    fi
 else
    REPOFCHECK=3
 fi
 sleep 2
 clear

 case "$REPOFCHECK" in

 1)  echo Repo folder alredy exist.
     echo However, repo is not installed.
     sleep 1

     #Installing Repo
     echo Installing REPO...
     PATH=~/bin:$PATH
     curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
     chmod a+x ~/bin/repo
     clear
     echo REPO has been Downloaded!
     sleep 3
     clear
     ;;

 2)  echo Repo is alredy installed.
     echo are you sure that your machine is not set-up?
     sleep 3
     ;;

 3)  #Installing Repo
     echo Installing REPO...
     mkdir ~/bin
     PATH=~/bin:$PATH
     curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
     chmod a+x ~/bin/repo
     clear
     echo REPO has been Downloaded!
     sleep 3
     clear
     ;;

 *) echo Error...
    exit 0
    ;;

 esac

 clear

else

 echo Please run the init.sh
 sleep 1
 exit 0

fi

