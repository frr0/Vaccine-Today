#!/bin/sh

echo "The installation has started!"
echo ""
echo "Do you have an ssh key for github? [y/n]"
echo "If you don't know what it is press [n]"

read answer

if [ "$answer" == "y" ]; then
  git clone git@github.com:frr0/Vaccine-Today.git
else
  git clone https://github.com/frr0/Vaccine-Today.git
fi

cd Vaccine-Today
sudo cp program.sh /usr/local/bin
cd /usr/local/bin
sudo mv program.sh vaccinetoday
sudo rm program.sh
