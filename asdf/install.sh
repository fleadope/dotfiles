#!/bin/sh

test -d $HOME/.asdf/ || echo "Directory already exists!"; exit 0

git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"


