#!/bin/bash

export DOTFILES_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )"/../ >/dev/null 2>&1 && pwd )

# TPM - Plugin manager
if ! [[ -d ~/.tmux/plugins/tpm ]]; then
    git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Nord theme
if ! [[ -d ~/.tmux/themes/nord-tmux ]]; then
    git clone --depth 1 https://github.com/arcticicestudio/nord-tmux ~/.tmux/themes/nord-tmux
fi
