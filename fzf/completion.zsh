#!/bin/sh

test -d $HOME/.fzf/shell || return 0

export FZF_COMPLETION_TRIGGER='**'

. $HOME/.fzf.zsh
