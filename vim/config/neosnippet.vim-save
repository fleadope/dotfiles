" Mappings for neosnippet https://github.com/Shougo/neosnippet.vim
let g:neosnippet#snippets_directory .= ",~/.dotfiles/vim/snippets"

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

if has('conceal')
    set conceallevel=2 concealcursor=i
endif

