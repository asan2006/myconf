#!/bin/bash

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.fonts
fc-cache -vf #refresh the cache
rm JetBrainsMono.zip
