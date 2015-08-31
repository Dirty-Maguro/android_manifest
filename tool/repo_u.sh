#!/bin/bash
clear

 if [ -f ~/bin/repo ]; then
    echo Unistalling repo...
    sleep 2
    rm -r ~/bin
    echo Repo Uninstalled
    sleep 1
 else
    echo Repo is not installed...
    sleep 1
 fi

clear


