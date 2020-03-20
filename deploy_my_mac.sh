#!/bin/bash
#Change the shell
chsh -s "$(command -v zsh)"

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
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/

# 此时ls -al查看文件夹显示无色。需要修改iTerm2: Preferences - Profiles - Text - Text Rendering，将 Draw bold text in bright colors 前面的勾去掉

#Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install nvs
export NVS_HOME="$HOME/.nvs"
git clone https://github.com/jasongin/nvs "$NVS_HOME"
. "$NVS_HOME/nvs.sh" install

nvs remote node https://npm.taobao.org/mirrors/node/
nvs add lts
nvs use lts
nvs link lts

npm install -g hexo-cli

# Install wget
brew install wget

# Install pyenv
brew install pyenv
brew install pyenv-virtualenv

# Install mackup
brew install mackup
