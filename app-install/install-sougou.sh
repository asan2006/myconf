#!/bin/bash

sudo apt install fcitx
sudo apt install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2
sudo apt install libgsettings-qt1

sudo apt install language-pack-zh-hans
sudo apt install language-pack-zh-hans-base
sudo apt install language-pack-zh-hant
sudo apt install language-pack-zh-hant-base
sudo apt install $(check-language-support)

sudo dpkg -i sogoupinyin_4.0.1.2123_amd64.deb
