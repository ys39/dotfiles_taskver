#!/bin/sh

#DOTFILES_GIT_DIR="$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)"
DOTFILES_DIR="$(cd "$(dirname ${BASH_SOURCE:-$0})/.." && pwd)"
GIT_DIR="$DOTFILES_DIR/git"

# Check if dot-gitconfig.local exists in the git directory
if [ ! -f "$GIT_DIR/dot-gitconfig.local" ]; then
    touch "$GIT_DIR/dot-gitconfig.local"
    echo "Created dot-gitconfig.local"
else
    echo "dot-gitconfig.local already exists, skipping..."
fi
