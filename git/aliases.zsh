# Git aliases


alias gaa="git add -A ."

test $(which hub) && alias git="hub"

alias pullup="git fetch origin -v; git fetch upstream -v; git merge upstream/master"
