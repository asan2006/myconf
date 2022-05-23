#!/bin/bash

CUR_PATH=$(dirname $(readlink -f $0))
sudo cp ${CUR_PATH}/proxy.conf /etc/apt/apt.conf.d/proxy.conf