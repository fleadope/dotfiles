printf '\033[0m\n' "Upgrading Dotfiles"
cd "$DOTFILES_DIR"
if git pull --rebase --stat origin master
then
    printf '\033[0;34m%s\033[0m\n' 'Hooray! Dotfiles have been updated and/or are at the current version.'
else
    printf '\033[0;31m%s\033[0m\n' 'There was an error updating. Try again later?'
fi

