#1 /bin/bash

cd ~
sudo apt-get install git
#opening new terminal for running fuzzer

gnome-terminal
git clone https://github.com/Greatestdeveloper/fuzz_testing
git submodule update --init --recursive
cd fuzz_testing 
(cd mavlink/pymavlink/ && tools/mavgen.py --lang=C --wire-protocol=2.0 --output=../../generated/include/mavlink/v2.0 ../message_definitions/v1.0/common.xml)
cmake -Bbuild src && cmake --build build && build/parser_with_assembled_message CORPUS_DIR/

