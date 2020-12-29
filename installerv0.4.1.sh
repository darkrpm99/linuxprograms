#!/bin/bash
# Ubuntu post installer
# version 0.4.1 29/12/2020
# added more software and fixes
# added installer for lastest kernel 5.10.3
# optimize code 

echo "ubuntu post installer starting, this take a while, please wait..."

# update packages & system
sudo apt update -y && sudo apt upgrade -y

# make temp dir
sudo mkdir tempdir

# change to temp dir
cd tempdir

# gimp
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y 
sudo apt update -y
sudo apt install gimp -y

# qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y 
sudo apt update -y 
sudo apt install qbittorrent -y

# inkscape
sudo add-apt-repository ppa:inkscape.dev/stable -y 
sudo apt update -y 
sudo apt install inkscape -y 

# steam
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B05498B7
sudo sh -c 'echo "deb http://repo.steampowered.com/steam/ precise steam" >> /etc/apt/sources.list.d/steam.list' 
sudo apt-get update -y

# add repository of visual studio code
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y 

# install dependencies of visual studio code
sudo apt update -y
sudo apt install software-properties-common apt-transport-https wget -y
sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# install vlc media player

sudo add-apt-repository ppa:savoury1/vlc3 -y
sudo add-apt-repository ppa:savoury1/multimedia -y

# install audacity
sudo add-apt-repository ppa:ubuntuhandbook1/audacity -y # add repository

# install cubic

sudo add-apt-repository ppa:cubic-wizard/release -y

# install firefox synaptic synaptic filezilla
sudo apt install firefox filezilla synaptic steam code obs-studio kodi vlc audacity p7zip p7zip-rar p7zip-full cubic youtube-dl -y

# remove old version of libreoffice and install the lastest version of libreoffice

sudo apt update -y
sudo apt full-upgrade -y

# add repository of libreoffice

sudo add-apt-repository ppa:libreoffice/libreoffice-7-0 -y
sudo apt-get update -y
sudo apt full-upgrade -y

# install virtualbox

sudo wget https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Ubuntu~eoan_amd64.deb
sudo dpkg -i virtualbox-6.1_6.1.16-140961~Ubuntu~eoan_amd64.deb

# download extension pack for virtualbox

sudo wget https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack

# download lastest kernel 5.10.3

wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.10.3/amd64/linux-headers-5.10.3-051003-generic_5.10.3-051003.202012261630_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.10.3/amd64/linux-image-unsigned-5.10.3-051003-generic_5.10.3-051003.202012261630_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.10.3/amd64/linux-modules-5.10.3-051003-generic_5.10.3-051003.202012261630_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.10.3/amd64/linux-headers-5.10.3-051003_5.10.3-051003.202012261630_all.deb

# install lastest kernel 5.10.3
sudo dpkg -i linux*.deb

# download google chrome and install it

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# download veracrypt and install it

sudo wget https://launchpad.net/veracrypt/trunk/1.24-update7/+download/veracrypt-1.24-Update7-Ubuntu-20.04-amd64.deb
sudo dpkg -i veracrypt-1.24-Update7-Ubuntu-20.04-amd64.deb

# download wallpaper
sudo wget https://allegra.flowersetcfresno.com/pic/5483714_full-fondos-de-pantalla-1920x1080-anime-hd-anime-hd-wallpapers-1080p-posted-by-john-johnson.jpg -o my-wallpaper.jpg
sudo mv my-wallpaper.jpg /usr/share/backgrounds/my-wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/my-wallpaper.jpg

# delete deb temp files
echo "delete deb temp files"
sudo rm *.deb

echo "Installation finished, reboot your system"
echo "Have a Nice Day :)"