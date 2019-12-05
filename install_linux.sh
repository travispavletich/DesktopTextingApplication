#!/bin/sh

mkdir /usr/share/textingapplication
mkdir /usr/share/textingapplication/server
mkdir /usr/share/textingapplication/client

git clone https://github.com/travispavletich/TextingServer.git

# dotnet build TextingServer/WebServer/WebServer -c Release -o /usr/share/textingapplication/server
dotnet publish TextingServer/WebServer/WebServer -c Release -o /usr/share/textingapplication/server -r linux-x64
chmod 777 /usr/share/textingapplication/server/WebServer

git clone https://github.com/travispavletich/TextingClientApp.git /usr/share/textingapplication/client
sudo npm install --prefix /usr/share/textingapplication/client

rm -rf TextingServer
rm -rf TextingClientApp
