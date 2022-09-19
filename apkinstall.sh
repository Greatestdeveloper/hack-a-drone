#! /bin/bash 

cd ~ 
yay -S hack-the-drone_0.1_all.deb
yay -S debtap
cd ~/Downloads
debtap hack-the-drone_0.1_all.deb
sudo pacman -U hack-the-drone_0.1_all.zst