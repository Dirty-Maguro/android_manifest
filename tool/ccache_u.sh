#!/bin/bash
clear

 if grep -Fxq "export USE_CCACHE=1"  ~/.bashrc; then
    echo Uninstalling CCACHE...
    sleep 1
    sed -i /USE_CCACHE/d  ~/.bashrc
    sed -i /CCACHE_DIR/d  ~/.bashrc 
    echo CCache Uninstalled...
    sleep 1
 else
    echo CCACHE is not installed...
    sleep 1
 fi

clear

