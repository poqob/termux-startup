#!/bin/bash
#installations
pkg update 
pkg upgrade
pkg install viu
pkg install openssh
pkg install python 
pkg install termux-api

chmod +x ./*.sh
source configuration.sh
