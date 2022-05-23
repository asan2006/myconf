#!/bin/bash

CUR_PATH=$(dirname $(readlink -f $0))
ver=$(lsb_release -c -s)

if [ ${ver} == 'focal' ];then
    sudo cp ${CUR_PATH}/ubuntu-focal.list /etc/apt/sources.list
fi