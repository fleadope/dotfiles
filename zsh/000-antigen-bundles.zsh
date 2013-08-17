antigen use oh-my-zsh

# Antigen bundles to install on any machine
antigen bundles <<EOBUNDLES

  #Take a guess if not found
  command-not-found
  git
  
  zsh-users/zsh-completions
  zsh-users/zsh-syntax-highlighting
  zsh-users/zaw

  # do what i mean
  oknowton/zsh-dwim

  # Heroku helper
  heroku

  # use fasd
  fasd

EOBUNDLES

antigen apply
antigen theme ~/.dotfiles/zsh/fleadope.zsh-theme


