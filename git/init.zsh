# find all git aliases and make shell aliases
for al in ${${${(0)"$(git config -z --get-regexp '^alias.')"}%%$'\n'*}#alias.}; do
  alias g$al="git $al"
done

# My git aliases
alias gaa="git add -A ."

# add hub
eval $(hub alias -s)
