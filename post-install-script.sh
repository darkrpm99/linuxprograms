#!/bin/bash

#actualizar paquetes y sistema
sudo apt update && sudo apt upgrade

#google chrome
sudo touch /etc/apt/sources.list.d/google-chrome.list
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
wget https://dl.google.com/linux/linux_signing_key.pub
signing key chrome sudo apt-key add linux_signing_key.pub
sudo apt update
sudo apt install google-chrome-stable

#Lector de PDF

sudo apt-get install okular

#TeamViewer

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb

#Skype

wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb

#Thunderbird

sudo add-apt-repository ppa:mozillateam/ppa
sudo apt update
sudo apt install thunderbird

#Python 3

sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt update 
sudo apt install python3.6

#filezilla

sudo apt update
sudo apt install filezilla

#Vlc player

sudo apt update
sudo apt install vlc

#Qbitorrent

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt install qbittorrent

#gimp

sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install gimp
