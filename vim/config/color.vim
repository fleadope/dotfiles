set t_Co=256
color solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
autocmd ColorScheme * highlight clear SignColumn
" Dark works better in the terminal
if has('gui_running')
    set background=light
    " turn powerline timeout
    " see https://powerline.readthedocs.org/en/latest/tipstricks.html#vim
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
else
    set background=dark
endif

"http://snk.tuxfamily.org/log/vim-256color-bce.html
set t_ut=
