#!/usr/bin/env bash
#
# Spf-13 http://github.com/spf13/spf13-vim.git 
#
# This is a non-standard install of this module, 
# so this script will move all the pieces into place
# 

if ! [ -L ~/.spf13-vim-3 ]; then
    echo -e "Installing Spf-13";
    ln -s ~/.dotfiles/submodule/spf13-vim ~/.spf13-vim-3;
    cd ~/.spf13-vim-3 && ./bootstrap.sh
else
    echo -e "Looks like Spf-13 is already installed";
fi
echo -e "Done."


