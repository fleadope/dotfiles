#!/usr/bin/env zsh

asdf="$HOME/.asdf"

if [ -d "$asdf" ]
then
  echo "asdf already installed"
else
  git clone https://github.com/asdf-vm/asdf.git "$asdf"
fi

cd "$asdf" && git checkout "$(git describe --abbrev=0 --tags)"

# need to install plugins

source $asdf/asdf.sh
asdf plugin add erlang
asdf plugin add elixir
asdf plugin add nodejs
asdf plugin add ruby
asdf plugin add yarn

# install the actual tools
test -f $HOME/.tool-versions || ln -s $(dirname $0)/tool-versions.symlink $HOME/.tool-versions
cd $HOME && asdf install



