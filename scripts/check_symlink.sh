#!/bin/sh

HOME_DIR="$HOME"
ls -la $HOME_DIR | grep '\->' | grep 'dotfiles'
