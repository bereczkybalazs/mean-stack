#!/usr/bin/env bash

echo "Provision VM START"
echo "=========================================="

sudo apt-get update

#install nodjs
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential


#install mongo db
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-10gen
sudo apt-get update

#install base npm packages
sudo npm install -g express
sudo npm install nodemon -g
sudo npm install forever -g

echo ""
echo "=========================================="
echo "Node setup:"
node -v
echo "Provision VM finished"