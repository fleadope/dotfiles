antigen bundle zsh-users/zaw

bindkey '^R' zaw-history

bindkey -M filterselect '^J' down-line-or-history
bindkey -M filterselect '^K' up-line-or-history

zstyle ':filter-select' max-lines $(( $LINES / 2 ))
zstyle ':filter-select' extended-search yes
zstyle ':filter-select' case-insensitive yes

