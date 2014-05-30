" A couple from airblade:https://github.com/airblade/dotvim/blob/master/vimrc
" Scroll on space bar
nnoremap <Space> <C-F>
nnoremap <S-Space> <C-B>
" Turn off highlighting
nnoremap <Leader><Space> :noh<CR>
" Kill trailing whitespace
nnoremap <Leader>ws :%s/\s\+$//<CR>
" Copy to / paste from system pasteboard.
" (Use `:put *<CR>` and `:put! *<CR>` for linewise pasting.)
noremap <Leader>p :set paste<CR>"*p:set nopaste<CR>
noremap <Leader>P :set paste<CR>"*P:set nopaste<CR>
" Make Y consistent with D and C (instead of yy)
noremap Y y$
" Duplicate and comment out duplicate.
nmap <leader>dc :t.<CR>k<Plug>NERDComComment
" Ruby: convert 1.8 hash syntax to 1.9, e.g `:foo => bar` to `foo: bar`.
map <Leader>h :s/\v:(\w+)\s*\=\>\s*(\S)/\1: \2/<CR>:noh<CR>
