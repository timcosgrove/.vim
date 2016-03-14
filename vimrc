source $VIMCONFIG/vimrc.vundle_setup.vim

" syntax/files
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" 'vim braces'
" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" default tab/spaces
set tabstop=2
set shiftwidth=2
set expandtab

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
