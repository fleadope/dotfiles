isdarwin(){
    [[ $OSTYPE == darwin* ]] && return 0
    return 1
}

isalpine(){
    [[ $OSTYPE == linux-musl ]] && return 0
    return 1
}

islinux(){
    [[ $OSTYPE == linux-musl ]] && return 1
    [[ $OSTYPE == linux* ]] && return 0
    return 1
}

#f1# are we running within an utf environment?
isutfenv() {
    case "$LANG $CHARSET $LANGUAGE" in
        *utf*) return 0 ;;
        *UTF*) return 0 ;;
        *)     return 1 ;;
    esac
}
# h/t [http://mivok.net/2009/09/20/bashfunctionoverrist.html]
save_function()
{     local ORIG_FUNC=$(declare -f )
    local NEWNAME_FUNC="${ORIG_FUNC#}"
    eval "$NEWNAME_FUNC"
}

#http://stackoverflow.com/questions/85880/determine-if-a-function-exists-in-bash
command_exists() {
  declare $1 > /dev/null
  return $?
}

# Added from https://github.com/jdavis/zsh-files/blob/master/functions/functions.zsh
# Automatically run ls when cd-ing into a directory
cd() {
    builtin cd $* && ls;
}

#Get IP
ip-addr() {
    wget -qO- http://ipecho.net/plain
    echo
}

# Time ZSH startup
zsh-time() {
    time zsh -i -c exit
}

# Run a command or multiple commands without saving it in the $HISTFILE
incognito() {
    if [ -z $EDITOR ]; then
        EDITOR=vim
    fi

    # Create temp for storing commands
    TEMPFILE=`mktemp -q incognito.XXXXXXXX`

    # Prompt for commands, only run if successful
    $EDITOR $TEMPFILE || {
        echo "Invalid return on the editing"
        return
    }

    # Run the script
    sh $TEMPFILE

    # Clean everything up
    rm -f $TEMPFILE
}

mkcd(){
  mkdir -p $1
  cd $1
}
