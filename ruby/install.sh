#!/usr/bin/env bash

# Verify Git is installed:
if [ ! $(which git) ]; then
  echo "Git is not installed, can't continue."
  exit 1
fi

DOTFILES_ROOT="$HOME/.dotfiles"
func_file=$DOTFILES_ROOT/zsh/001-functions.zsh
[[ -f $func_file ]] && source $func_file

if [ -z "${RBENV_ROOT}" ]; then
  RBENV_ROOT="$HOME/.rbenv"
fi

# Install rbenv:
if [ ! -d "$RBENV_ROOT" ] ; then
  git clone https://github.com/sstephenson/rbenv.git $RBENV_ROOT
else
  cd $RBENV_ROOT
  if [ ! -d '.git' ]; then
    git init
    git remote add origin https://github.com/sstephenson/rbenv.git
  fi
  git pull origin master
fi

# link the default-gems file
ln -s $DOTFILES_ROOT/ruby/default-gems $RBENV_ROOT

# Install plugins:
PLUGINS=(
  sstephenson/rbenv-vars
  sstephenson/ruby-build
  sstephenson/rbenv-default-gems
	sstephenson/rbenv-gem-rehash
  fesplugas/rbenv-installer
  fesplugas/rbenv-bootstrap
  rkh/rbenv-update
  rkh/rbenv-whatis
  rkh/rbenv-use
  tpope/rbenv-aliases
  tpope/rbenv-communal-gems
)

for plugin in ${PLUGINS[@]} ; do

  KEY=${plugin%%/*}
  VALUE=${plugin#*/}

  RBENV_PLUGIN_ROOT="${RBENV_ROOT}/plugins/$VALUE"
  if [ ! -d "$RBENV_PLUGIN_ROOT" ] ; then
    git clone https://github.com/$KEY/$VALUE.git $RBENV_PLUGIN_ROOT
  else
    cd $RBENV_PLUGIN_ROOT
    echo "Pulling $VALUE updates."
    git pull
  fi

done

# install heroku
islinux && ! [ `which heroku` ] &&wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh 

