#!/bin/sh

echo "Setting up tmux configurations."
mkdir -p "$HOME"/.config
mv -f "$HOME"/.tmux.conf "$HOME/.tmux.conf.bkp-$(date +%s)"
ln -s "$HOME"/.dotfiles/tmux/tmux.conf "$HOME"/.tmux.conf
