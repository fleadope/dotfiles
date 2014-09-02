isdarwin(){
    [[ $OSTYPE == darwin* ]] && return 0
    return 1
}

islinux(){
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

