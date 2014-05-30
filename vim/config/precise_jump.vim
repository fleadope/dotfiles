"disable default bindings
let g:PreciseJump_disable_bindings = 1

" set our own bindings
nmap <C-f> :call PreciseJumpF(-1, -1, 0)<cr>
vmap <C-f> <ESC>:call PreciseJumpF(-1, -1, 1)<cr>
omap <C-f> :call PreciseJumpF(-1, -1, 0)<cr>
