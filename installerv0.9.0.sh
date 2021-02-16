#!/bin/bash
# Ubuntu post installer
# version 0.9.0 16/02/2021
# add more software and fix errors 
# added installer for lastest kernel 5.11
# added graphical installer for install lastest kernel(ubuntu mainline kernel installer)
# optimize code

echo "ubuntu post installer starting, this take a while, please wait..."

# update packages & system
sudo apt update -y && sudo apt upgrade -y

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
sudo apt install steam

# visual studio code
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y 
sudo apt update -y
sudo apt install software-properties-common apt-transport-https wget -y
sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo apt install code

# install vlc media player

sudo add-apt-repository ppa:savoury1/vlc3 -y
sudo apt update
sudo apt install vlc

# install audacity
sudo add-apt-repository ppa:ubuntuhandbook1/audacity -y 
sudo apt update
sudo apt install audacity

# install cubic
sudo add-apt-repository ppa:cubic-wizard/release -y
sudo apt update
sudo apt install cubic

# install synaptic filezilla
sudo apt install filezilla synaptic obs-studio kodi p7zip p7zip-rar p7zip-full youtube-dl -y

# add repository of libreoffice
sudo add-apt-repository ppa:libreoffice/libreoffice-7-0 -y
sudo apt-get update -y
sudo apt full-upgrade -y


# install ubuntu mainline kernel installer

sudo add-apt-repository ppa:cappelikan/ppa -y
sudo apt update -y
sudo apt install mainline





# make temp dir
sudo mkdir tempdir

# change to temp dir
cd tempdir

# Descargar Ultimo Kernel 5.11

sudo wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11/amd64/linux-headers-5.11.0-051100_5.11.0-051100.202102142330_all.deb
sudo wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11/amd64/linux-headers-5.11.0-051100-generic_5.11.0-051100.202102142330_amd64.deb
sudo wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11/amd64/linux-image-unsigned-5.11.0-051100-generic_5.11.0-051100.202102142330_amd64.deb
sudo wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.11/amd64/linux-modules-5.11.0-051100-generic_5.11.0-051100.202102142330_amd64.deb
sudo dpkg -i *.deb


# install virtualbox
sudo wget https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Ubuntu~eoan_amd64.deb

# download extension pack for virtualbox
sudo wget https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack

# download google chrome and install it

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# download veracrypt and install it

sudo wget https://launchpad.net/veracrypt/trunk/1.24-update7/+download/veracrypt-1.24-Update7-Ubuntu-20.04-amd64.deb

# download wallpaper
sudo wget https://allegra.flowersetcfresno.com/pic/5483714_full-fondos-de-pantalla-1920x1080-anime-hd-anime-hd-wallpapers-1080p-posted-by-john-johnson.jpg -o my-wallpaper.jpg
sudo mv my-wallpaper.jpg /usr/share/backgrounds/my-wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/my-wallpaper.jpg

# install all deb packages
sudo dpkg -i linux*.deb

# delete deb temp files
echo "delete deb temp files"
sudo rm *.deb

echo "Installation finished, reboot your system"
echo "Have a Nice Day :)"