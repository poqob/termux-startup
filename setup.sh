#!/bin/bash
#installations
pkg update 
pkg upgrade
pkg install viu
pkg install openssh
pkg install python 
pkg install termux-api
pkg install tilde
pkg install vi
pkg install nano
pkg install htop

chmod +x ./*.sh
source configuration.sh
