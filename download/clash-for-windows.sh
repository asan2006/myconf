#!/bin/bash

cd $HOME/Downloads/
curl https://api.github.com/repos/Fndroid/clash_for_windows_pkg/releases/latest \
|grep "browser_download_url.*-x64-linux.tar.gz" \
|cut -d : -f 2-3 \
| tr -d \" \
| wget -i -
