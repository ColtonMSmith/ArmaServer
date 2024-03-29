#!/bin/bash
yum install glibc.i686 libstdc++.i686 curl screen
sudo useradd -m steam
sudo passwd steam 
echo "steam  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/steam
su steam
cd ~
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
mv steamcmd.sh steamcmd
mv steamcmd /home/steam/steamcmd
