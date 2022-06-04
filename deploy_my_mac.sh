#!/bin/bash
# Change the shell
chsh -s "$(command -v zsh)"

# Install the xcode command line tools
xcode-select --install

# Install the pip
# easy_install --user pip

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerline
# pip install --user powerline-status

# Install the fonts of the Powerline
# git clone https://github.com/powerline/fonts.git
# sh fonts/install.sh

# Install agnoster theme
# git clone https://github.com/fcamblor/oh-my-zsh-agnoster-fcamblor.git
# sh oh-my-zsh-agnoster-fcamblor/install

# Add the highlighting effect
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install iTerm2 theme dracula
mkdir -p ~/Code/github && git clone https://github.com/dracula/iterm.git ~/Code/github/iterm

# 此时ls -al查看文件夹显示无色。需要修改iTerm2: Preferences - Profiles - Text - Text Rendering，将 Draw bold text in bright colors 前面的勾去掉

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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

# Install cakebrew
brew install --cask cakebrew

# Install clean me
brew install --cask clean-me

# Install Go
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
go env -w GOPATH=~/Code/go_gogo
