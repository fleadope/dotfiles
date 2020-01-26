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

if islinux; then
    alias update="sudo apt-get update "
    alias upgrade="sudo aptitude safe-upgrade"
    alias install="sudo aptitude install "
    alias remove="sudo aptitude remove "
    alias search="apt-cache search "
elif isdarwin; then
    alias update="brew update"
    alias upgrade="brew outdated | xargs brew install"
    alias install="brew install "
    alias search="brew search "
    alias remove="brew uninstall "
elif isalpine; then
    alias update="sudo apk update "
    alias upgrade="sudo apk upgrade "
    alias install="sudo apk add "
    alias remove="sudo apk del "
    alias search="apk search "
fi


