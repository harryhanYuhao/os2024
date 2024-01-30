#!/bin/bash 

cp brc ~/.brc 

mkdir -p ~/.local/bin/
cp killQemu.bash ~/.local/bin/killqemu
chmod +X ~/.local/bin/killqemu

source ~/.brc
