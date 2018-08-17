#!/bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp init_vimrc  ~/.vimrc
pip install pep8 flake8 pyflakes yapf
vim +BundleInstall +BundleClean! +qa
