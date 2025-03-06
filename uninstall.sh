#!/bin/bash

if [ -n "$BASH_VERSION" ]; then
    CONFIG_FILE="$HOME/.bashrc"
    SHELL_NAME="Bash"
elif [ -n "$ZSH_VERSION" ]; then
    CONFIG_FILE="$HOME/.zshrc"
    SHELL_NAME="Zsh"
else
    echo "Shell not supported. This script only works in Bash or Zsh."
    exit 1
fi

if grep -q "BEGIN AUTO-INSTALL AUTOFIX COMMAND" "$CONFIG_FILE"; then
    sed -i '/# BEGIN AUTO-INSTALL AUTOFIX COMMAND/,/# END AUTO-INSTALL AUTOFIX COMMAND/d' "$CONFIG_FILE"
    if [ $? -eq 0 ]; then
        echo "JumpAPT removed from $CONFIG_FILE."
        echo "$SHELL_NAME: Uninstallation completed. Please restart your terminal or run 'source $CONFIG_FILE' to apply the changes."
    else
        echo "Error removing JumpAPT from $CONFIG_FILE."
    fi
else
    echo "\nJumpAPT was not found in $CONFIG_FILE. It may already be uninstalled."
fi
