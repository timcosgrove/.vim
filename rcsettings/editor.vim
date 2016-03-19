" basics
set number

" default tab/spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Behaviors
" highlight current line
augroup BgHighlight
  autocmd!
 autocmd WinEnter * set cul
 autocmd WinLeave * set nocul
augroup END


