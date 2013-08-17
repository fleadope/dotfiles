# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  # this is the most universal choice
  export EDITOR='vim'
fi
