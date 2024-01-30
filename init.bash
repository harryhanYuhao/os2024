#!/bin/bash 

cp brc ~/.brc 

mkdir -p ~/.local/bin/

cp killQemu.bash ~/.local/bin/killqemu
chmod +x ~/.local/bin/killqemu

cp runqemu ~/.local/bin/runqemu
chmod +x ~/.local/bin/runqemu

source ~/.brc
