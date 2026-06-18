#!/bin/sh
set -e

cd $HOME/.vtime/bash_setup

# check if the config exists (might not want to overwrite)
ALIAS_PATH="$HOME/.bash_aliases"
if [ -e "$ALIAS" ]; then
    echo "Alias file already exists, not copying."
else
    echo "Copying tmux config."
    # copy the config
    cp bash_alias $HOME/.bash_aliases
fi

echo "Installed Bash aliases"
