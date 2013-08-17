# TODO - add gems
#
# i.e. %gimme blah
# pseudocode: search packages for 'blah' 
# if it's a package, then install it
# if it's a gem, then gem install it

if islinux; then
    alias update="sudo apt-get update "
    alias upgrade="sudo aptitude safe-upgrade"
    alias install="sudo aptitude install "
    alias remove="sudo aptitude remove "
    alias search="apt-cache search "
elif isdarwin; then
    alias update="brew update"
    alias upgrade="brew outdated | xargs brew install"
    alias install="brew search "
    alias remove="brew uninstall "
fi

alias gimme="update"
alias get="update"
