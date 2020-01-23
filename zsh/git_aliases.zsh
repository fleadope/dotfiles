for al in ${${${(0)"$(git config -z --get-regexp '^alias.')"}%%$'\n'*}#alias.}; do
  alias g$al="git $al"
done
