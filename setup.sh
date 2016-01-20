#!/bin/bash
DIRECTORY=`pwd`
echo "Symlinking to files in $DIRECTORY"
cd ~
ln -s $DIRECTORY/.zshrc
ln -s $DIRECTORY/.zsh_aliases
ln -s $DIRECTORY/.zsh_functions
ln -s $DIRECTORY/.vimrc
ln -s $DIRECTORY/.tmux.conf
ln -s $DIRECTORY/.gitconfig
ln -s $DIRECTORY/.gitignore

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install ohmyzsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
cp $DIRECTORY/parthi1.zsh-theme ~/.oh-my-zsh/themes/
cd ~
source .zshrc
echo Done
