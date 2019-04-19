" From http://0x3f.org/blog/make-youcompleteme-ultisnips-compatible/
"
"let g:ycm_key_list_select_completion=['\<C-TAB>', '\<Down>']
"let g:ycm_key_list_previous_completion = ['<\<C-S-TAB>', '\<Up>']

"let g:SuperTabDefaultCompletionType = '\<C-Tab>'

let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<CR>"
  endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
