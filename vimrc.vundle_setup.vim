set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" source our plugins list
execute "source ".g:vimrc_dir."/vimrc.vundle_plugins.vim"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
