" Mappings for Vim-Rspec (https://github.com/thoughtbot/vim-rspec)
let g:rspec_command = "Dispatch spring rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>ss :call RunNearestSpec()<CR>
map <Leader>ls :call RunLastSpec()<CR>
map <Leader>as :call RunAllSpecs()<CR>
