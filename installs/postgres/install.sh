#!/bin/bash

_install_postgres () {
  # postgres 12
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
  echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg.list
  sudo apt update
  sudo apt -y install postgresql-12 postgresql-client-12 postgresql-contrib-12 pgadmin4 python3-pip

  # pgcli
  pip3 install -U pgcli
}

echo "Do you wish to install postgresql?"
select yn in "Yes" "No"
case $yn in
  Yes ) _install_postgres;;
  No ) exit;;
esac
