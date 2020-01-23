export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  # eval "$(rbenv init --no-rehash -)"
  # rbenv rehash > /dev/null 2<&1 &!
fi

