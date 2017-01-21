#!/bin/bash

# go to root
cd

# add ubuntu mate repository
apt-add-repository ppa:ubuntu-mate-dev/ppa -y
apt-add-repository ppa:ubuntu-mate-dev/trusty-mate -y

# update
apt-get update
apt-get -y upgrade

# install ubuntu mate
apt-get install ubuntu-mate-core ubuntu-mate-desktop -y

# install xrdp
apt-get install xrdp -y

# configure mate with xrdp
echo mate-session >~/.xsession

# go to root
cd

# configure xrdp config
cd /etc/xrdp/
mv xrdp.ini xrdp.ini.bak
wget https://raw.githubusercontent.com/choirulanam217/linuxrdp/master/xrdp.ini

# go to root
cd

#
echo "========================================"
echo "|                                      |"
echo "|         Instalation Complete!        |"
echo "|                                      |"
echo "========================================"
echo ""
echo ""
echo "Server will be reboot. Please wait..."

# clean installer
rm rdp-mate.sh

# reboot
reboot
