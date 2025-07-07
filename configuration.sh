#!/bin/bash

#functions

safe_mkdir() {
  mkdir -p "$1" 2>/dev/null
}



#directories
safe_mkdir $HOME/termux-startup
safe_mkdir $HOME/temp
safe_mkdir $HOME/temp/session
safe_mkdir $HOME/temp/session/img


# paths
export STARTUP="$HOME/termux-startup"
export TMP="$HOME/temp"
export CONF="$STARTUP/configuration.sh"


# variables
export PORT="2220"
export SHOW_PICTURE="0"
export RUN_EXECUTABLES="1"


#session
ip=$(timeout 1s termux-wifi-connectioninfo | grep ip | awk -F'"' '{print $4}')
export IP="$ip"
export USER="dag"

#executable
export NEW="$STARTUP/startup.sh"
