DISABLE_AUTO_UPDATE=true
export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-ohmyzsh-SLASH-ohmyzsh"
export ZSH_CACHE_DIR=$ZSH/cache
export ZSH_BUNDLES_FILE="$DOTFILES_DIR/antibody/zsh_bundles.txt"
export ZSH_PLUGINS_FILE="$DOTFILES_DIR/antibody/zsh_plugins.zsh"

source <(antibody init)
source $ZSH_PLUGINS_FILE

alias update-antibody-bundles="zsh -c 'antibody bundle < $ZSH_BUNDLES_FILE > $ZSH_PLUGINS_FILE'; source $ZSH_PLUGINS_FILE"