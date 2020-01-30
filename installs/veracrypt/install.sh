#!/bin/bash

_install_veracrypt () {
  sudo add-apt-repository ppa:unit193/encryption
  update && install veracrypt
}


echo "You are about to install VeraCrypt. Continue?"
select yn "Yes" "No"
case $yn in 
  Yes )
    _install_veracrypt
    exit 1;;
  No )
    exit 0;;
esac