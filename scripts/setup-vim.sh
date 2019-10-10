#!/bin/bash

export DOTFILES_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )"/../ >/dev/null 2>&1 && pwd )

# Vundle - Plugin manager
if ! [[ -d ~/.vim/bundle/Vundle.vim ]]; then
    git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Add vim config file
rm -f ~/.vimrc
ln -s ${DOTFILES_DIR}/.vimrc ~/.vimrc

# Add plugins
rm -f ~/.vimrc.bundles
ln -s ${DOTFILES_DIR}/.vimrc.bundles ~/.vimrc.bundles
vim +PluginInstall +qall
