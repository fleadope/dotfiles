# bindkey -v

# function zle-line-init zle-keymap-select {
#     VIM_PROMPT="%{$fg[red]%} [% NORMAL]%  %{$reset_color%}"
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
#       zle reset-prompt
# }

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

# I like having up arrow for history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
