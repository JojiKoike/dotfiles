#!/bin/bash

# Home直下
DOT_FILES=(.zshrc .vimrc .vsvimrc .tmux.conf .gitconfig .commit_template .iceberg.itermcolors)

for file in ${DOT_FILES[@]}
do
    if [ -f $HOME/$file ]; then
	rm -f $HOME/$file
    fi
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# $HOME/.config配下
DOT_FILES=(starship.toml)

for file in ${DOT_FILES[@]}
do
    if [ -f $HOME/.config/$file ]; then
	rm -f $HOME/.config/$file
    fi
    ln -s $HOME/dotfiles/.$file $HOME/.config/$file
done
