#!/bin/bash
#10/27/15
#Requires 2015-09-24-raspbian-jessie
#sudo apt-get install libffi-dev tcl-dev mercurial libreadline-dev squashfs-tools
#git clone https://github.com/jandecaluwe/myhdl.git
#cd myhdl/
#sudo python setup.py install
#Provides the tools to support the cat board.
#yosys arachne-pnr icebox
sudo unsquashfs gtkwave_iverilog_python3_yosys_bcm2735_arachne-pnr_icebox_usrlocal091715
sudo cp squashfs-root/bin/yosys* /usr/local/bin
sudo cp squashfs-root/bin/arachne-pnr /usr/local/bin
sudo cp squashfs-root/bin/icebox* /usr/local/bin

sudo cp -R squashfs-root/share/arachne-pnr/ /usr/local/share/
sudo cp -R squashfs-root/share/icebox/ /usr/local/share/
sudo cp -R squashfs-root/share/yosys /usr/local/share/

sudo cp squashfs-root/bin/icepack /usr/local/bin
sudo cp squashfs-root/bin/iceprog /usr/local/bin
sudo cp squashfs-root/bin/icemulti /usr/local/bin

git clone https://github.com/cfelton/rhea.git
cd rhea/
sudo python setup.py develop
cd examples/build
python ex_icestick.py
python ex_catboard.py
ls -la iceriver/


