#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc

# Installing base16 colors for VIM
cd ~/.vim/ && mkdir colors && cd colors
git clone git://github.com/chriskempson/base16-vim.git base16
cp base16/colors/*.vim .
rm -rf base16

vim +PluginInstall +qall 2>&1 > /dev/null

# Installing base16 colors for shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

if [ -f ~/bashrc ]; then
source ~/.bashrc
fi

if [ -z "$BASE16_SHELL" ]
then
cat >> ~/.bashrc <<- EOM
BASE16_SHELL=\$HOME/.config/base16-shell/
[ -n "\$PS1" ] && [ -s \$BASE16_SHELL/profile_helper.sh ] && eval "\$(\$BASE16_SHELL/profile_helper.sh)"
EOM
fi
