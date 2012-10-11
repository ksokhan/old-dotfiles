#!/usr/bin/env sh

endpath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

echo "thanks for installing spf13-vim\n"

# Backup existing .vim stuff
echo "backing up current vim config\n"
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do [ -e $i ] && mv $i $i.$today; done


mkdir -p $endpath/vim/bundle
ln -s $endpath/vimrc $HOME/.vimrc
ln -s $endpath/vimrc.local $HOME/.vimrc.local
ln -s $endpath/vimrc.bundles.local $HOME/.vimrc.bundles.local
ln -s $endpath/vim $HOME/.vim

echo "Installing Vundle"
git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

echo "installing plugins using Vundle"
vim +BundleInstall! +BundleClean +q
