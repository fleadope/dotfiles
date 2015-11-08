" the default configuration for ctrlp in spf13 sets a custom user
" command, but that ends up causing our custom ignore rules to
" be useless because it overrides them. So instead, we'll fall back
" to the default ctrlp behavior of globbing, which works with the ignore
" rules. You have to do this here rather than the bundles file or else it
" gets overwritten.
unlet g:ctrlp_user_command
let g:ctrlp_user_command = ''

let g:ctrlp_custom_ignore = {
			\ 'dir':  '\.git$\|\.hg$\|\.gem$\|\.yardoc\|vendor\|public\/images\|public\/system\|data\|log\|tmp$',
			\ 'file': '\.exe$\|\.so$\|\.dat$'
			\ }


" show hidden files, such as dotfiles
let g:ctrlp_show_hidden = 1

map <c-b> :CtrlPBuffer<CR>
map <C-M> :CtrlPMRU<CR>

" CtrlP Extensions
let g:ctrlp_extensions = ['yankring', 'quickfix', 'changes', 'mixed']
noremap <Leader>yr :CtrlPYankring<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " bind leader-g to Ag shortcut
  nmap <silent> <leader>g :Ag<SPACE>
endif
