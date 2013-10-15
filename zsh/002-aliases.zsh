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
alias zrs="zeus spec spec/**/*_spec.rb"
alias zsw="rm .zeus.sock"
alias zweep="rm .zeus.sock"



