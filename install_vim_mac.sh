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
if [ ! -d ~/.config/base16-shell ]; then
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

if [ -f ~/.bashrc ]; then
source ~/.bashrc
fi

if [ ! -d ~/.vim/undo ]; then
mkdir -p ~/.vim/undo
fi

if [ -z "$BASE16_SHELL" ]
then
cat >> ~/.bashrc <<- EOM
BASE16_SHELL=\$HOME/.config/base16-shell/
[ -n "\$PS1" ] && [ -s \$BASE16_SHELL/profile_helper.sh ] && eval "\$(\$BASE16_SHELL/profile_helper.sh)"
EOM
fi

if [ ! -d ~/.vim/syntax ]; then
mkdir -p ~/.vim/syntax
fi

if [ ! -d ~/.vim/templates/python ]; then
mkdir -p ~/.vim/templates/python
fi
cat ./python-google-docstring.txt > ~/.vim/templates/python/block-comment.txt
  
cd ~/.vim/syntax
curl http://www.vim.org/scripts/download_script.php\?src_id\=19394 --output nginx.vim
echo "au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif" > ~/.vim/filetype.vim
