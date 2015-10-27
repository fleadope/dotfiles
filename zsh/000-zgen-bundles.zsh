# zgen bundles to install on any machine
if ! zgen saved; then

    echo "Creating a zgen save"
    zgen oh-my-zsh

    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/ssh-agent
    zgen oh-my-zsh plugins/vagrant
    zgen oh-my-zsh plugins/dirpersist
    zgen oh-my-zsh plugins/last-working-dir
    zgen oh-my-zsh plugins/taskwarrior
    zgen oh-my-zsh plugins/rake-fast

    zgen loadall <<EOBUNDLES
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
