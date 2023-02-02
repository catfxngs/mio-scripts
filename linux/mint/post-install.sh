#!/bin/bash

# THIS IS NOT A FINAL LIST

# Make sure to run with root privileges! (sudo post-install.sh)

# Get the latest updates
add-apt-repository universe
apt update
apt -y upgrade

# Manage the repositories that you install
apt install -y software-properties-common

# Install Oracle Java
add-apt-repository ppa:webupd8team/java
apt update
apt install -y oracle-java8-installer
apt install -y oracle-java8-set-default

# Multimedia codecs
apt install -y ubuntu-restricted-extras
apt install -y libdvdcss2 libdvdnav4 libdvdread4

# Install VLC
add-apt-repository ppa:videolan/stable-daily
apt update
apt install -y vlc

# Rar and other archiving utilities
apt install -y unace p7zip-rar sharutils rar arj lunzip lzip gdebi

# Clipboard manager
add-apt-repository ppa:diodon-team/stable 
apt update
apt install diodon

# QBittorrent Client
apt install -y qbittorrent

# Microsoft font
apt install -y ttf-mscorefonts-installer

# Teamviewer (64 bit)
wget http://download.teamviewer.com/download/teamviewer_amd64.deb
gdebi teamviewer_11.0.xxxxx_amd64.deb

# Discord
wget -O discord “https://discord.com/api/download?platform=linux&format=deb”
dpkg -i discord

# Spotify
apt-add-repository -y "deb http://repository.spotify.com stable non-free"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886
apt update
apt install -y spotify-client

# Steam
apt install steam

# Dolphin Emulator
apt-add-repository ppa:dolphin-emu/ppa
apt update
apt install dolphin-emu

# Install Python-pip
apt install -y python-pip

# Install a ProtonVPN
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb
dpkg -i protonvpn-stable-release
apt update
apt install protonvpn
apt install gnome-shell-extension-appindicator gir1.2-appindicator3-0.1

# Double-check everything
apt update
apt -y upgrade