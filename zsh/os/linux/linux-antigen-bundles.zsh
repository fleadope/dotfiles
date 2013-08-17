antigen bundle debian

# this alias ends up overriding silver searcher
unalias 'ag'

# couple of aliases that aren't included
aar () {
  sudo apt-add-repository $1;
  sudo apt-get update;
}

