# Vim setup
Automatic, probably naive vim install and setup.

Installs macvim and Vundle if they are not already present and installs plugins. 

# Installation
This currently assumes you have Homebrew installed (and therefore is OS X-specific obviously).

1.  `git clone https://github.com/timcosgrove/.vim.git ~/.vim`
1. `~/.vim/vim_setup.sh`

You'll probably need to source your shell config when this is done.

# Notes

1. This repo uses the "2nd user vimrc" location, ~/.vim/vimrc. Be aware that if you have ~/.vimrc, ~/.vim/vimrc will not load. Also, ~/.vim/vimrc requires vim 7.4.
1. I'm exporting ~/.vim in my shell config as VIMCONFIG. There is probably a better way to do this that is not reliant on env variables.
