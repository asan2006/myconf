#!/bin/bash
mac="enxf8e43bf188bc"
sudo ifconfig ${mac} down
sudo ifconfig ${mac} hw ether 48:2A:E3:96:94:0F
# sudo ifconfig ${mac} hw ether 34:2E:B7:AC:EC:B6 
sudo ifconfig ${mac} up 
