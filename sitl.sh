#! /bin/bash
cd ~
sudo apt install git

echo "-----------------Enter your ardupilot cloned repository url----------------- :" 
read url 
git clone $url
cd ardupilot
Tools/environment_install/install-prereqs-ubuntu.sh -y
. ~/.profile
./waf configure --board CubeOrange
./waf copter
git checkout Copter-4.0.4
git submodule update --init --recursive
git config --global url."https://".insteadOf git://
git submodule update --init --recursive
sudo apt-get update

cd ~/ardupilot/ArduCopter
sim_vehicle.py --map --console

# below console scripting should be done 

mode guided 
arm throttle 
echo "---------------Enter height : " 
read height 
takeoff $height 
echo "---------------Enter distance to travel : " 
read distance
position $distance 0 0 
mode acro


# updating to the master branch after installation 
# best network server selection from ubuntu settings

