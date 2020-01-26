#!/bin/bash

sudo apt-get install fonts-powerline dconf-cli

cd $(dirname $0)

git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh
