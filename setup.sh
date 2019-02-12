#! /usr/bin/env zsh

#neovim config dir
NVIM_DIR=$HOME/.config/nvim

mkdir -p $NVIM_DIR

ln -fs ${0:a:h}/nvim/init.vim $NVIM_DIR/init.vim
ln -fs ${0:a:h}/nvim/keymap.vim $NVIM_DIR/keymap.vim
