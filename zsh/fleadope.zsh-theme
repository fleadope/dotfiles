autoload colors
colors
setopt PROMPT_SUBST

PROMPT='%{%(#~$fg[red]~$fg[blue])%}%n@%m '
PROMPT+='%{$fg[green]%}${PWD/#$HOME/~} '
PROMPT+='%{%(#~$fg[cyan]~$fg[magenta])%}<$( rbenv version-name )>'
PROMPT+='%{%(#~$fg[red]~$fg[blue])%}%# '
PROMPT+='%{$reset_color%}'

RPROMPT='%{$FG[069]%}$(git_prompt_info)'
RPROMPT+='%{$reset_color%} '
RPROMPT+='$(git_prompt_status)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%} ✱"
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# the %c interprets environment variables, which messes with the dir stack
unsetopt AUTO_NAME_DIRS

