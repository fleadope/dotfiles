#compdef ag

# Copied from https://raw.githubusercontent.com/thoughtbot/dotfiles/master/zsh/completion/_ag

if (( CURRENT == 2 )); then
  compadd $(cut -f 1 tmp/tags .git/tags 2>/dev/null)
else;
  _files
fi
