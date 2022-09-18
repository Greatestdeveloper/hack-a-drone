#! /bin/bash

# file --> extract --> cd --> mono installation --> mono MissionPlanner.exe

echo "Mission planner zip file containing directory" 
read path

cd $path

sudo apt-get install unzip
unzip MissionPlanner-latest.zip 
cd MissionPlanner-latest
sudo apt install mono-complete
mono MissionPlanner.exe

