#!/bin/bash

_install_codium () {
  wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -
  echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | \
      sudo tee --append /etc/apt/sources.list.d/vscodium.list
  sudo apt update && sudo apt install codium
}

echo "Do you wish to install codium?"
select yn in "Yes" "No"
case $yn in
  Yes ) _install_codium;;
    No ) exit;;
esac

