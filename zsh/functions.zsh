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

# like source ~/.mybash/_functions
# then do your chruby setup..

#chruby_setup_goes_here...

## then:

#save_function chruby old_chruby
#source chruby_override_w_after_use_hook

## like: source ~/.mybash/_chruby_override
## the new function looks like:

#function chruby () {                                                                                                           
    #old_chruby $*                                                                                                              
    #your_after_use_hook_code_here..                              
#}
