#!/bin/bash
#10/27/15
#Requires 2015-09-24-raspbian-jessie
#sudo apt-get install libffi-dev tcl-dev mercurial libreadline-dev squashfs-tools
#git clone https://github.com/jandecaluwe/myhdl.git
#cd myhdl/
#sudo python setup.py install
#Provides the tools to support the cat board.
#yosys arachne-pnr icebox

sudo cp squashfs-root/bin/iverilog* /usr/local/bin
sudo cp squashfs-root/bin/vvp /usr/local/bin
sudo cp -R squashfs-root/include/iverilog /usr/local/include

sudo cp squashfs-root/lib/libvpi.a /usr/local/lib
sudo cp squashfs-root/lib/libveriuser.a /usr/local/lib
sudo cp -R squashfs-root/lib/ivl /usr/local/lib
