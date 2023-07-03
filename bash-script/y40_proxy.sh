#!/bin/bash

set -euxo pipefail

sudo iwlist wlp0s20f3 scan | grep ESSID
nmcli device wifi connect Y40 password 00000000
GATEWAY="$(ip route show 0.0.0.0/0 dev wlp0s20f3 |awk '{print $3}')"

if [ $GATEWAY ]; then 
echo "gateway is $GATEWAY"
fi

gsettings set org.gnome.system.proxy.http host $GATEWAY
gsettings set org.gnome.system.proxy.http port 7890

gsettings set org.gnome.system.proxy.https host $GATEWAY
gsettings set org.gnome.system.proxy.https port 7890

gsettings set org.gnome.system.proxy.ftp host $GATEWAY
gsettings set org.gnome.system.proxy.ftp port 7890

gsettings set org.gnome.system.proxy.socks host $GATEWAY
gsettings set org.gnome.system.proxy.socks port 7890

gsettings set org.gnome.system.proxy mode 'manual'
