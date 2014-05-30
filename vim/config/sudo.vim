" write with sudo
" see http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work?rq=1
cmap w!! s !sudo tee > /dev/null %
