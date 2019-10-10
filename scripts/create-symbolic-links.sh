#!/bin/bash

export DOTFILES_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )"/../ >/dev/null 2>&1 && pwd )

# tmux
rm -f ~/.tmux.conf
ln -s ${DOTFILES_DIR}/.tmux.conf ~/.tmux.conf
