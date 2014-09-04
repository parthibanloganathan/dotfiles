#!/bin/bash
DIRECTORY=`pwd`
echo "Symlinking to files in $DIRECTORY"
cd ~
ln -s $DIRECTORY/.zshrc
ln -s $DIRECTORY/.zsh_aliases
ln -s $DIRECTORY/.zshr_functions
ln -s $DIRECTORY/.vimrc
ln -s $DIRECTORY/.tmux.conf
ln -s $DIRECTORY/.gitconfig
echo Done
