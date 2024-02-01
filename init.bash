#!/bin/bash 

sed '/###OS2024BEGIN/,/###OS2024END/d' ~/.brc -i

echo "###OS2024BEGIN" >> ~/.brc
echo "Copied $(date)" >> ~/.brc
cat brc >> ~/.brc 
echo "###OS2024END" >> ~/.brc

mkdir -p ~/.local/bin/

cp killQemu.bash ~/.local/bin/killqemu
chmod +x ~/.local/bin/killqemu

cp runqemu ~/.local/bin/runqemu
chmod +x ~/.local/bin/runqemu
