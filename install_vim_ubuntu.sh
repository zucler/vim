#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc_ubuntu ~/.vimrc

vim +PluginInstall +qall 2>&1 > /dev/null

if [ ! -d ~/.vim/undo ]; then
mkdir -p ~/.vim/undo
fi

if [ ! -d ~/.vim/syntax ]; then
mkdir -p ~/.vim/syntax
fi

cd ~/.vim/syntax
curl http://www.vim.org/scripts/download_script.php\?src_id\=19394 --output nginx.vim
echo "au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif" > ~/.vim/filetype.vim

vim -c "spell RU_RU" -c "quit"

if [ ! -d ~/.vim/templates/python ]; then
mkdir -p ~/.vim/templates/python
fi
cat ./python-google-docstring.txt > ~/.vim/templates/python/block-comment.txt
