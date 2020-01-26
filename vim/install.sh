#!/usr/bin/env zsh

mkdir $HOME/SpaceVim.d/
ln -s $DOTFILES_DIR/vim/init.toml $HOME/.SpaceVim.d/

curl -sLf https://spacevim.org/install.sh | bash

