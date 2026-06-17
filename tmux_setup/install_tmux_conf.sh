#!/bin/sh
set -e

cd $HOME/.vtime/tmux_setup/

# check if the config exists (might not want to overwrite)
TMUX_CONF_PATH="$HOME/.tmux.conf"
if [ -e "$TMUX_CONF_PATH" ]; then
    echo "Config file already exists, not copying."
else
    echo "Copying tmux config."
    # copy the config
    cp tmux_conf $HOME/.tmux.conf
fi

# install tmux plugin manager
mkdir -p "$HOME/.tmux/plugins"
if [ -e "$HOME/.tmux/plugins/tpm" ]; then
    echo "TPM already installed."
else
    git clone git@github.com:tmux-plugins/tpm.git $HOME/.tmux/plugins/tpm
fi

echo "Installed Tmux configuration"
