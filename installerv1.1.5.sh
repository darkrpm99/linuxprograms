#!/bin/bash
# Ubuntu post installer
# version 1.1.5 09/03/2022
# remove installer for lastest kernel 
# optimize code

echo "ubuntu post installer starting, this take a while, please wait..."

# update packages & system
sudo apt-get update -y >> /dev/null
sudo apt-get upgrade -y >> /dev/null

# DB Browser for SQLite
sudo add-apt-repository -y ppa:linuxgndu/sqlitebrowser -y >> /dev/null
sudo apt-get update -y >> /dev/null
sudo apt-get install sqlitebrowser -y >> /dev/null

# qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y >> /dev/null
sudo apt-get update -y >> /dev/null
sudo apt-get install qbittorrent -y >> /dev/null

# install ubuntu mainline kernel installer
sudo add-apt-repository ppa:cappelikan/ppa -y >> /dev/null
sudo apt-get update -y >> /dev/null
sudo apt-get install mainline -y >> /dev/null

# install cubic
sudo add-apt-repository ppa:cubic-wizard/release -y >> /dev/null
sudo apt-get update -y >> /dev/null
sudo apt-get install cubic -y >> /dev/null

# download google chrome,visual studio code and install it

cd /tmp
sudo wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo wget "https://az764295.vo.msecnd.net/stable/8908a9ca0f221f36507231afb39d2d8d1e182702/code_1.65.1-1646706496_amd64.deb"
sudo dpkg -i *.deb
rm *.deb

# install synaptic filezilla
sudo apt-get install filezilla synaptic obs-studio p7zip p7zip-rar p7zip-full youtube-dl firefox vlc steam audacity gimp inkscape -y >> /dev/null

echo "Installation finished, reboot your system"
echo "Have a Nice Day :)"