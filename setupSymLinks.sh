#!/bin/sh

cp -rf ~/dotfiles/.??* ~/
ln -s -f ~/dotfiles/.bashrc ~/.bashrc
ln -s -f ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
. ~/.bashrc
