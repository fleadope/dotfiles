command_exists cowsay 
[[ $? == 0 ]] && command_exists lolcat
[[ $? == 0 ]] && fortune -ao -n 160 | cowsay | lolcat
