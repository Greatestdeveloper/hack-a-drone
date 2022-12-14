#1 /bin/bash

cd ~
sudo apt-get install git
sudo apt-get install cmake && sudo apt-get upgrade cmake
sudo apt-get install clang && sudo apt-get upgrade clang

#opening new terminal for running fuzzer
#commands are not getting executed in the new terminal opened.
#gnome-terminal

echo "---------------Fork the given github repo as paste the forked url here--------------"
echo "https://github.com/Greatestdeveloper/fuzz_testing"
read url 
git clone --recurse-submodules $url
cd fuzz_testing 
git submodule update --init --recursive
sudo apt-get update && sudo apt-get upgrade 
(cd mavlink/pymavlink/ && tools/mavgen.py --lang=C --wire-protocol=2.0 --output=../../generated/include/mavlink/v2.0 ../message_definitions/v1.0/common.xml)

cmake -Bbuild src && cmake --build build && build/parser_with_assembled_message CORPUS_DIR/
