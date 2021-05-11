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

echo "Going to configure Microsoft PPA..."
echo ""
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt update

echo "Going to install .NET Core SDK 3.1((LTS) and its dependency..."
echo ""
sudo apt install -y apt-transport-https
sudo apt install -y dotnet-sdk-3.1

echo "Going to install/confirm .NET Core Runtime 3.1 (LTS)..."
echo ""
sudo apt install -y dotnet-runtime-3.1

echo "Going to install .NET Framework 5.0 (Latest)..."
echo ""
sudo apt install -y dotnet-sdk-5.0

echo "Going to install/confirm .NET Core runtime 5.0 (lates)..."
echo ""
sudo apt install -y dotnet-runtime-5.0


dotnet --version
dotnet --list-sdks
dotnet --list-runtimes


echo "Going to install jhipster .net blueprint..."
echo ""
sudo npm install -g generator-jhipster-dotnetcore

echo "DONE"
echo ""
