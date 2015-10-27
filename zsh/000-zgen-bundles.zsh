# zgen bundles to install on any machine
if ! zgen saved; then

    echo "Creating a zgen save"
    zgen oh-my-zsh
    zgen loadall <<EOBUNDLES

      command-not-found
      git
      ssh-agent
      vagrant
      dirpersist
      last-working-dir
      taskwarrior
      rake-fast

      zsh-users/zsh-completions
      zsh-users/zsh-syntax-highlighting
      zsh-users/zsh-history-substring-search
      abull/better_zeus

      oknowton/zsh-dwim

      heroku

      fasd

EOBUNDLES
    zgen save
fi

source ~/.dotfiles/zsh/fleadope.zsh-theme
