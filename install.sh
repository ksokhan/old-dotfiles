#!/usr/bin/env sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing all vim...\n"
./vim/bootstrap.sh

echo "Installing zsh...\n"

ln -s $DIR/zsh/zshrc ~/.zshrc
chsh -s /bin/zsh

echo "Installing fonts...\n"
cp ./fonts/* ~/Library/Fonts/


echo "Trying to link git config file... \n"
ln -s $DIR/gitconfig ~/.gitconfig
