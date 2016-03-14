#!/bin/bash
# this assumes Homebrew is installed
# @todo make this more agnostic

# install macvim if it is not installed
if [ -z "$(brew ls --versions macvim)" ]; then
  echo "MacVim is not installed. Installing MacVim."
  brew install macvim --with-override-system-vim
else
  echo "MacVim is already installed."
fi

# install Vundle if it is not installed
if ! [ -e ~/.vim/bundle/Vundle.vim ]; then
  echo "Vundle is not installed. Installing Vundle."
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  echo "Vundle is already installed."
fi

# install Vundle plugins
echo "Installing Vundle plugins"
vim +PluginInstall +qall
