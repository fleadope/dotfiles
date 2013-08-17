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
