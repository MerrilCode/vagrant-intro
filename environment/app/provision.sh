#!/bin/bash 

# update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash ./nodesource_setup.sh

# install nodeJS
sudo apt-get install -y nodejs

sudo npm install -g pm2