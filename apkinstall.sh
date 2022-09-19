#! /bin/bash 

cd ~/hack-a-drone
yay -S hack-the-drone_0.1_all.deb
yay -S debtap

debtap hack-the-drone_0.1_all.deb
sudo pacman -U hack-the-drone_0.1_all.zst
