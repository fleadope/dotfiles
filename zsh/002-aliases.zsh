autoload zmv
alias zmz='noglob zmv'
alias zcp='noglob zmv -C'
alias zln='noglob zmv -L'
alias zsy='noglob zmv -Ls'

# stolen from oh-my-zsh
# Basic directory operations
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

# Show history
alias history='fc -l 1'
alias gh="history | grep $1"

# List direcory contents
alias lh='ls -lh'
alias lsa='ls -lah'
#alias l='ls -la'
alias ll='ls -l'
alias la='ls -lA'
alias sl=ls # often screw this up

alias af="alias | grep $1"

# Zeus
alias zrs="zeus spec --tag \"~pending\" spec/**/*_spec.rb"
alias zall=zrs
alias zsw="rm .zeus.sock"
alias zweep=zsw

# Tmux
alias tmux="tmux -2"

alias ping="ping -c5"

alias update_zgen="zgen update && source $DOTFILES_DIR/zsh/000-zgen-bundles.zsh"

alias b="bundle"
alias bi="b install --path vendor"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# Change volume from the command line
alias voldown="pactl -- set-sink-volume @DEFAULT_SINK@ -5%"
alias volup="pactl -- set-sink-volume @DEFAULT_SINK@ +5%"
alias voltog="pactl set-sink-mute @DEFAULT_SINK@ toggle"

alias kill-extra-mosh="pgrep -u "$USER" mosh-server | tr ' ' '\n' | grep -v "$PPID" | xargs kill"
