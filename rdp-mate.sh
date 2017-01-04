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

# restart xrdp
service xrdp restart

#
echo "=============================="
echo "|                            |"
echo "|    Instalation Complete!   |"
echo "|                            |"
echo "=============================="
