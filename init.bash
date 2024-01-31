#!/bin/bash 

echo "#############" >> ~/.brc
echo "Copied $(date)" >> ~/.brc
echo "#############" >> ~/.brc
cat brc >> ~/.brc 
echo "#############" >> ~/.brc
echo "END OF COPY" >> ~/.brc
echo "#############" >> ~/.brc

mkdir -p ~/.local/bin/

cp killQemu.bash ~/.local/bin/killqemu
chmod +x ~/.local/bin/killqemu

cp runqemu ~/.local/bin/runqemu
chmod +x ~/.local/bin/runqemu
