#!/bin/bash

ZPREZTO_FILES=(zlogin  zlogout  zpreztorc  zprofile  zshenv  zshrc)
BASEDIR=$(dirname $0)
BASEDIR=$(cd $BASEDIR; pwd)
for zfile in "${ZPREZTO_FILES[@]}"
do
  ln -sf "$BASEDIR/$zfile" "$HOME/.$zfile"
done
ln -sf "$BASEDIR/zprezto" "$HOME/.zprezto"
ln -sf "$BASEDIR/tmux.conf" "$HOME/.tmux.conf"
ln -sf "$BASEDIR/dircolors-solarized" "$HOME/.dir-colors"
ln -sf "$BASEDIR/vimrc" "$HOME/.vimrc"
ln -sf "$BASEDIR/vim" "$HOME/.vim"
ln -sf "$BASEDIR/gitignore_global" "$HOME/.gitignore_global"
git config --global core.excludesfile "$HOME/.gitignore_global"
git config --global color.ui true 
