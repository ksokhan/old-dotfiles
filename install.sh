#!/usr/bin/env sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing all vim..."
./vim/bootstrap.sh

echo "Installing zsh..."

ln -s $DIR/zsh/zshrc ~/.zshrc
chsh -s /bin/zsh

echo "Installing fonts..."
cp ./fonts/* ~/Library/Fonts/
