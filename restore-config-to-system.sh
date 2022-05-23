#/bin/bash

if [ ! -d "~/.config/i3" ]; then
  mkdir -p ~/.config/i3
fi

if [ ! -d "~/.config/i3blocks" ]; then
  mkdir -p ~/.config/i3blocks
fi

if [ ! -d "~/.vim" ]; then
  mkdir -p ~/.vim
fi

cp ./i3/config ~/.config/i3/config 
cp ./i3blocks/config ~/.config/i3blocks/config 
cp ./vim/vimrc ~/.vim/vimrc
cp ./zsh/.zshrc ~/.zshrc 
