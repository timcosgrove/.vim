source $VIMCONFIG/vimrc.vundle_setup.vim

" syntax/files
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" basics
set number

" default tab/spaces
set tabstop=2
set shiftwidth=2
set expandtab

" remaps
let mapleader = ","
" move through wrapped lines appropriately
nmap k gk
nmap j gj

" leader commands
nmap <leader>vr :tabnew $MYVIMRC<cr>

" insert mode mappings
" control s to save; requires disabling flow control for your shell.
" http://apple.stackexchange.com/a/34503
imap <C-S> <esc>:w<cr>

" 'vim braces'
" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Behaviors
" highlight current line
augroup BgHighlight
  autocmd!
 autocmd WinEnter * set cul
 autocmd WinLeave * set nocul
augroup END

" autoload changes to vimrc
augroup myvimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
