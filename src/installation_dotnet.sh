#!/bin/bash

# ref
# https://docs.microsoft.com/ko-kr/dotnet/core/install/linux-ubuntu#1804-
# https://minwook-shin.github.io/ubuntu-1804-dotnet-install/


echo "ubuntu 18.04 install start"
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

echo "apt sdk remove"
sudo apt-get remove dotnet*

echo "sdk install"
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-5.0

echo "runtime install"
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y aspnetcore-runtime-5.0

echo "Installation complete"

echo "\n\n"

echo "create dotnet console and test dotnet run"

mkdir test_dotnet
cd ./test_dotnet

dotnet new console
dotnet run

echo "if printed *hello world*, it's well-installed"
