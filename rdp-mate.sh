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

# install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg –I google-chrome-stable_current_amd64.deb

# install wine
apt-get install wine -y

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

# clean installer
rm google-chrome-stable_current_amd64.deb

# restart xrdp
service xrdp restart

#
echo "=============================="
echo "|                            |"
echo "|    Instalation Complete!   |"
echo "|                            |"
echo "=============================="

# clean installer
rm rdp-mate.sh
