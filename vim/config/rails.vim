autocmd FileType ruby,eruby,yaml,rspec set tw=80 ai sw=2 sts=2 et
autocmd FileType ruby,eruby,yaml setlocal foldmethod=manual
autocmd User Rails set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" hashrocket
imap <C-l> <Space>=><Space>

" toggle symbol <=> string
imap <C-k> <C-o>b:<Esc>Ea
nmap <C-k> lbi:<Esc>E

