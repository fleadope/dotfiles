#!/usr/bin/env zsh

asdf="$HOME/.asdf"

if [ -d "$asdf" ]
then
  echo "asdf already installed"
else
  sudo apt-get install -y make binutils gcc build-essential \
  git curl zlib1g-dev openssl libssl-dev libreadline-dev \
  libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev \
  libcurl4-openssl-dev  software-properties-common wget dnsutils \
  unzip screen tmux htop libffi-dev redis-server ntp ufw sudo \
  dirmngr libxrender1 build-essential git wget libssl-dev \
  libreadline-dev libncurses5-dev zlib1g-dev m4 curl wx-common \
  libwxgtk3.0-dev autoconf libxml2-utils xsltproc fop unixodbc \
  unixodbc-bin unixodbc-dev inotify-tools default-jdk


  git clone https://github.com/asdf-vm/asdf.git "$asdf"
fi

cd "$asdf" && git checkout "$(git describe --abbrev=0 --tags)"

# need to install plugins

source $asdf/asdf.sh
asdf plugin add erlang
asdf plugin add elixir
asdf plugin add nodejs
$asdf/plugins/nodejs/bin/import-release-team-keyring
asdf plugin add ruby
asdf plugin add yarn

# install the actual tools
test -f $HOME/.tool-versions || ln -s $(dirname $0)/tool-versions.symlink $HOME/.tool-versions
cd $HOME && asdf install

mix local.hex && mix archive.install hex phx_new 1.4.12



