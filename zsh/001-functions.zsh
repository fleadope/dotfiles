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

update_default_gems() {
    if [ -f "${RBENV_ROOT}/default-gems" ]; then
    local line gem_name gem_version args

    # Read gem names and versions from $RBENV_ROOT/default-gems.
    while IFS=" " read -r -a line; do

      # Skip empty lines.
      [ "${#line[@]}" -gt 0 ] || continue

      # Skip comment lines that begin with `#`.
      [ "${line[0]:0:1}" != "#" ] || continue

      gem_name="${line[0]}"
      gem_version="${line[1]}"

      if [ "$gem_version" == "--pre" ]; then
        args=( --pre )
      elif [ -n "$gem_version" ]; then
        args=( --version "$gem_version" )
      else
        args=()
      fi

      # Invoke `gem install` in the just-installed Ruby. Point its
      # stdin to /dev/null or else it'll read from our default-gems
      # file.
      RBENV_VERSION="$VERSION_NAME" rbenv-exec gem install "$gem_name" "${args[@]}" < /dev/null || {
        echo "rbenv: error installing gem \`$gem_name'"
      } >&2

    done < "${RBENV_ROOT}/default-gems"
  fi
}
