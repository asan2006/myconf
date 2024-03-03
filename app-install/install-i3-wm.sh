#!/bin/bash

sudo apt install i3 i3blocks
sudo apt install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior
CUR_PATH=$(dirname $(readlink -f $0))
I3_PATH=${CUR_PATH}/../i3
cp ${I3_PATH}/config $HOME/.config/i3/

# i3blocks-contrib
git clone https://github.com/vivien/i3blocks-contrib.git ~/app/i3blocks-contrib