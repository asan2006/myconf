#!/bin/bash

# set -euxo pipefail

host=$(gsettings get org.gnome.system.proxy.http host)
port=$(gsettings get org.gnome.system.proxy.http port)
proxy=${host:1:-1}:${port}
export http_proxy=http://${proxy}
export https_proxy=http://${proxy}
