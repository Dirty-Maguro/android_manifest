#!/bin/bash
clear

 if [ -f ~/bin/repo ]; then
     echo Repo is already installed...
     sleep 1
 else
     #Installing Repo
     echo Installing REPO...
     mkdir ~/bin
     PATH=~/bin:$PATH
     curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
     chmod a+x ~/bin/repo
     clear
     echo REPO has been Installed"!"
     sleep 3
     clear
 fi

clear
