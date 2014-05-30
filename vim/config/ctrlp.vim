let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.gem$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
            \ 'file': '\.exe$\|\.so$\|\.dat$'
            \ }

map <c-b> :CtrlPBuffer<CR>
map <C-M> :CtrlPMRU<CR>

" CtrlP Extensions
let g:ctrlp_extensions = ['yankring', 'quickfix', 'changes', 'mixed']
noremap <Leader>yr :CtrlPYankring<CR>
