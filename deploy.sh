#!/bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp init_vimrc  ~/.vimrc
vim +BundleInstall +BundleClean! +qa
