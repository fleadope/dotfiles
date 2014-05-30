" Simple way to turn off Gdiff splitscreen
" works only when diff buffer is focused
" https://gist.github.com/radmen/5048080/raw/51e916dc4a6466da90d67093272c2553c4c77db2/vimrc
if !exists(":Gdiffoff")
  command Gdiffoff diffoff | q | Gedit
endif
nnoremap <Leader>do call :Gdiffoff
