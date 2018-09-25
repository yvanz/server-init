#!/bin/bash
#Change the shell
chsh -s `which zsh`

#Install the xcode command line tools
xcode-select --install

#Install the pip
# easy_install --user pip

#Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install Powerline
# pip install --user powerline-status

#Install the fonts of the Powerline
# git clone https://github.com/powerline/fonts.git
# sh fonts/install.sh

#Install agnoster theme
# git clone https://github.com/fcamblor/oh-my-zsh-agnoster-fcamblor.git
# sh oh-my-zsh-agnoster-fcamblor/install

#Add the highlighting effect
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/Code/

# 此时ls -al查看文件夹显示无色。需要修改iTerm2: Preferences - Profiles - Text - Text Rendering，将 Draw bold text in bright colors 前面的勾去掉

#Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install nvm
shell ./nvm_install.sh

nvm install stable

npm install -g cnpm --registry=https://registry.npm.taobao.org

cnpm install -g hexo-cli

# Install wget
brew install wget

# Install pyenv
brew install pyenv

# Install mackup
brew install mackup
