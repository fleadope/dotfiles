autoload colors
colors

# ruby_version=`chruby | grep '\*' | cut -d ' ' -f 3 `
ruby_version=`ruby -v | cut -d ' ' -f 2 `
# PROMPT='%{$FG_bold[red]%}➜ '
# PROMPT='%{$FG[190]%}%n@%m ➜ '
PROMPT="%{%(!~$fg[red]%n@%m~$fg[blue])%}%#%{$fg[default]%} "
PROMPT+='%{$FG[159]%}%c '
PROMPT+='%{$fg[red]%}<$ruby_version>'
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

