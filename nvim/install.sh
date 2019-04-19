#!/bin/bash

# link files and dirs into the right place
nvim_config="$HOME/.config/nvim/"
nvim_local="$HOME/.local/share/nvim"
echo -e "${nvim_config}"
mkdir -p "${nvim_config}"
# Make the backup dir
mkdir -p $nvim_local/backup

ln -s $DOTFILES_DIR/nvim/init.vim $nvim_config
ln -s $DOTFILES_DIR/nvim/conf/ $nvim_config

# Install plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

