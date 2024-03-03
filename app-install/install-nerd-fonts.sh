#!/bin/bash

get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

version=$(get_latest_release "ryanoasis/nerd-fonts")
echo ${version}

wget https://github.com/ryanoasis/nerd-fonts/releases/download/${version}/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.fonts
rm JetBrainsMono.zip

wget https://github.com/ryanoasis/nerd-fonts/releases/download/${version}/DroidSansMono.zip
unzip DroidSansMono.zip -d ~/.fonts
rm DroidSansMono.zip

fc-cache -vf #refresh the cache

