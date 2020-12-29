#!/bin/bash
# Ubuntu post installer
# version 0.2 16/07/2020
# added more software and fixes

echo "ubuntu post installer starting, this take a while, please wait..."

# update packages & system
sudo apt update -y
sudo apt upgrade -y

# make temp dir
sudo mkdir temp

# change to temp dir
cd temp

# update firefox
sudo apt install firefox -y
# synaptic
sudo apt install synaptic -y
# filezilla
sudo apt install filezilla -y
# steam
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B05498B7
sudo sh -c 'echo "deb http://repo.steampowered.com/steam/ precise steam" >> /etc/apt/sources.list.d/steam.list' 
sudo apt-get update
sudo apt-get install steam

# install dependencies of visual studio code
sudo apt update -y
sudo apt install software-properties-common apt-transport-https wget -y
sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# add repository of visual studio code
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# install visutal studio code 
sudo apt install code -y 

# install obs-studio

sudo apt update -y
sudo apt install obs-studio -y

# install kodi

sudo apt update -y
sudo apt install kodi -y

# install vlc media player

sudo add-apt-repository ppa:savoury1/vlc3 -y
sudo add-apt-repository ppa:savoury1/multimedia -y
sudo apt update -y
sudo apt full-upgrade -y
sudo apt update -y
sudo apt install vlc -y

# install audacity
sudo add-apt-repository ppa:ubuntuhandbook1/audacity -y # add repository
sudo apt update -y
sudo apt install audacity -y

# remove old version of libreoffice and install the lastest version of libreoffice

sudo apt update -y
sudo apt full-upgrade -y

# add repository of libreoffice

sudo add-apt-repository ppa:libreoffice/libreoffice-7-0 -y
sudo apt-get update -y
sudo apt full-upgrade -y

# install retroarch multi emulator system
# stable version

sudo add-apt-repository ppa:libretro/stable -y
sudo apt-get update -y
sudo apt-get install retroarch* -y


# install 7 zip
sudo apt install p7zip p7zip-rar p7zip-full -y

# install gimp

sudo apt install aptitude -y
sudo aptitude install gimp -y
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo apt update -y
sudo apt install gimp gimp-plugin-registry gimp-gmic -y

# install cubic

sudo add-apt-repository ppa:cubic-wizard/release -y
sudo apt update -y
sudo apt install cubic -y

# install chromium
sudo add-apt-repository ppa:system76/pop -y
sudo apt update -y
sudo apt install chromium -y

# install youtube-dl
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
sudo apt update -y
sudo apt install youtube-dl -y

# install virtualbox

sudo wget https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Ubuntu~eoan_amd64.deb
sudo dpkg -i virtualbox-6.1_6.1.16-140961~Ubuntu~eoan_amd64.deb

# download extension pack for virtualbox

sudo wget https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack

# download lastest kernel 5.9.0

sudo wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9/amd64/linux-headers-5.9.0-050900-generic_5.9.0-050900.202010112230_amd64.deb
sudo wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9/amd64/linux-headers-5.9.0-050900_5.9.0-050900.202010112230_all.deb
sudo wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9/amd64/linux-image-unsigned-5.9.0-050900-generic_5.9.0-050900.202010112230_amd64.deb
sudo wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.9/amd64/linux-modules-5.9.0-050900-generic_5.9.0-050900.202010112230_amd64.deb

# install lastest kernel 5.9.0
sudo dpkg -i linux-headers-5.9.0-050900-generic_5.9.0-050900.202010112230_amd64.deb
sudo dpkg -i linux-headers-5.9.0-050900_5.9.0-050900.202010112230_all.deb
sudo dpkg -i linux-image-unsigned-5.9.0-050900-generic_5.9.0-050900.202010112230_amd64.deb
sudo dpkg -i linux-modules-5.9.0-050900-generic_5.9.0-050900.202010112230_amd64.deb


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
