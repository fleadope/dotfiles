#!/bin/bash

sudo apt-get install fonts-powerline

cd $(dirname $0)
bash -c "$(curl -fsSL https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh)"

