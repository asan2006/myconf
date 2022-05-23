#!/bin/bash

set -xue

ROOT_PATH=$(dirname $(readlink -f $0))
SCRIPT_PATH=${ROOT_PATH}/script
cd ${SCRIPT_PATH}

sudo apt update
sudo apt upgrade
sudo apt install ssh vim git ranger
sudo apt install wget curl gnupg lsb-release net-tools
sudo apt install neofetch terminator

sudo apt install i3 i3blocks
sudo apt install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior

#git config --global user.name "Robin Yu"
#git config --global user.email "bin___03@163.com"
#git config credential.helper store