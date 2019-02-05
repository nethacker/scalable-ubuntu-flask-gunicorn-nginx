#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt -y install ntpdate
sudo ntpdate pool.ntp.org
sudo apt -y install ntp
sudo apt -y install build-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev
sudo apt -y install python3-pip python3-dev
sudo apt -y install nginx
sudo pip3 install -y virtualenvwrapper
