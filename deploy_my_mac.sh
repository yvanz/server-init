#!/bin/bash
#Change the shell
chsh -s `which zsh`

#Install the xcode command line tools
xcode-select --install

#Install the pip
sudo easy_install pip
if [ ! -d ~/.config/pip ];then
mkdir -p ~/.config/pip
touch ~/.config/pip/pip.conf
fi
echo '[global]' >> ~/.config/pip/pip.conf
echo 'timeout = 60' >> ~/.config/pip/pip.conf
echo 'index-url = https://pypi.douban.com/simple' >> ~/.config/pip/pip.conf

#Install the Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install the Powerline
pip install --user powerline-status

#Install the fonts of the Powerline
git clone https://github.com/powerline/fonts.git
sh fonts/install.sh

#Install the theme called agnoster
git clone https://github.com/fcamblor/oh-my-zsh-agnoster-fcamblor.git
sh oh-my-zsh-agnoster-fcamblor/install
sed -i s/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/

#Add the highlighting effect
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/
echo "source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" > ~/.zshrc

#Install the Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

