#!/bin/sh

# Ubuntu-20.04
# ref: https://www.jhipster.tech/installation/

sudo apt update
echo "Going to install java jdk..."
echo ""
sudo apt install -y openjdk-11-jdk

echo "Going to install curl"
echo ""
sudo apt install -y curl

echo "Going to install nodejs v14.x (LTS) and npm with dependencies..."
echo ""
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs
sudo apt install -y build-essential

node --version
npm --version

echo "Going to install jhipster..."
echo ""
sudo npm install -g generator-jhipster

echo "Going to install yeoman..."
sudo npm install -g yo

echo "DONE"
echo ""
