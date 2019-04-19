" vim: set foldmethod=marker foldlevel=0:
" ========================================
" .vimrc of Lee Pope
" ========================================

let g:mapleader = "\<Space>"

" Autoinstall vim-plug {{{
if empty(glob('~/.nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
" }}}

call plug#begin('~/.local/share/nvim/plugged')
"
" Appearance
"
" ====================================================================
"

 Plug 'altercation/vim-colors-solarized'
 Plug 'mhartington/oceanic-next'
 Plug 'ryanoasis/vim-devicons'
 Plug 'ryanoasis/nerd-fonts'
 Plug 'vim-airline/vim-airline'
 Plug 'airblade/vim-gitgutter'

 Plug 'itchyny/lightline.vim'
" Settings for lightline
  let g:lightline = {
        \ 'colorscheme': 'solarized',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'fugitive', 'gitgutter', 'filename' ] ],
        \   'right': [ [ 'percent', 'lineinfo' ],
        \              [ 'syntastic' ],
        \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
        \ },
        \ 'component_function': {
        \   'fugitive': 'LightLineFugitive',
        \   'gitgutter': 'LightLineGitGutter',
        \   'readonly': 'LightLineReadonly',
        \   'modified': 'LightLineModified',
        \   'syntastic': 'SyntasticStatuslineFlag',
        \   'filename': 'LightLineFilename'
        \ },
        \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
        \ 'subseparator': { 'left': '|', 'right': '|' }
        \ }

  function! LightLineModified()
    if &filetype == "help"
      return ""
    elseif &modified
      return "+"
    elseif &modifiable
      return ""
    else
      return ""
    endif
  endfunction

  function! LightLineReadonly()
    if &filetype == "help"
      return ""
    elseif &readonly
      return "RO"
    else
      return ""
    endif
  endfunction

  function! LightLineFugitive()
    return exists('*fugitive#head') ? fugitive#head() : ''
  endfunction

  function! LightLineGitGutter()
    if ! exists('*GitGutterGetHunkSummary')
          \ || ! get(g:, 'gitgutter_enabled', 0)
          \ || winwidth('.') <= 90
      return ''
    endif
    let symbols = [
          \ g:gitgutter_sign_added,
          \ g:gitgutter_sign_modified,
          \ g:gitgutter_sign_removed
          \ ]
    let hunks = GitGutterGetHunkSummary()
    let ret = []
    for i in [0, 1, 2]
      if hunks[i] > 0
        call add(ret, symbols[i] . hunks[i])
      endif
    endfor
    return join(ret, ' ')
  endfunction

  function! LightLineFilename()
    return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
  endfunction
"
" End Appearance

" Shougo plugins
" deoploete {{{
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Options for deoplete {{{
  let g:deoplete#enable_at_startup=1
" }}}
" }}}
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
"

" fzf - searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'
" Options for fzf.vim
" From CtrlP
map <C-p> :Files<cr>
nmap <C-p> :Files<cr>
map <C-b> :Buffers<cr>
nmap <C-b> :Buffers<cr>

" View commits in fzf
nmap <Leader>c :Commits<cr>

" Complete from open tmux panes (from @junegunn)
inoremap <expr> <C-x><C-t> fzf#complete( 'tmuxwords.rb -all-but-current --scroll 499 --min 5')

inoremap <expr> <C-x><C-k> fzf#complete ('cat /usr/share/dict/words')

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Time to stop using hjkl!
Plug 'takac/vim-hardtime'
let g:hardtime_default_on = 1

" Use relative numbers in normal mode, absolute otherwise
Plug 'jeffkreeftmeijer/vim-numbertoggle'
set number
set relativenumber


" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Needs to be added before projectionist
Plug 'c-brenn/phoenix.vim'

" TPope plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-projectionist'

Plug 'AndrewRadev/splitjoin.vim'
  nmap <Leader>j :SplitjoinJoin<cr>
  nmap <Leader>s :SplitjoinSplit<cr>

Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'mhinz/vim-sayonara'
Plug 'junegunn/goyo.vim'
Plug 'neomake/neomake'
Plug 'easymotion/vim-easymotion'

Plug 'vimux'

" Vim-Test
Plug 'janko-m/vim-test'
   nmap <silent> <leader>t :TestNearest<CR>
   nmap <silent> <leader>T :TestFile<CR>
   nmap <silent> <leader>ta :TestSuite<CR>
   nmap <silent> <leader>tl :TestLast<CR>
   nmap <silent> <leader>tv :TestVisit<CR>

Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vroom'
Plug 'sudo.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim'
Plug 'delimitMate.vim'
Plug 'epeli/slimux'
Plug 'dahu/vim-fanfingtastic'
Plug 'terryma/vim-expand-region'
Plug 'semanticart/PreciseJump'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'slim-template/vim-slim'
Plug 'jplaut/vim-arduino-ino'
Plug 'file-line'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'

call plug#end()

syntax enable
colorscheme OceanicNext
set background=dark

let mapleader ="\<Space>"
set noshowmode

" Remember cursor position between vim sessions
autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

" " center buffer around cursor when opening files
autocmd BufRead * normal zz<Paste>

" Don't require a save to move to the next buffer
set hidden
