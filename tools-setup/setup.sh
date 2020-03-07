#!/bin/bash
# Shu Tools Setup Script
# Author: Shu / deniz.frosty@gmail.com
# Last update: 03/06/2019
# Supports: Kali Linux 2019-08-22


echo "[ * ] Starting script.."

echo "[ * ] Installing python2.7, python-pip, git and build tools.."
apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential -y
python -m pip install --upgrade pip

echo "[ * ] Installing pwntools.."
python -m pip install --upgrade pwntools

echo "[ * ] Installing gdb.."
sudo apt-get install gdb -y
echo "--> Installing PEDA plugin.."
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
echo "--> Installing pwndbg plugin.."
git clone https://github.com/pwndbg/pwndbg
./pwndbg/setup.sh

echo "[ * ] Installing BinaryNinja.."
wget https://cdn.binary.ninja/installers/BinaryNinja-demo.zip
unzip -d BinaryNinja-demo.zip ~/
rm -f BinaryNinja-demo.zip
echo "- Note: You can access binary ninja from ~/binaryninja/binaryninja"

echo "-------------------------------------------------"
echo "--- Finished ---"
