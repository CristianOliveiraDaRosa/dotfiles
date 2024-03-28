#!/bin/sh

echo "Setting up yabai - tiling window manager"

# Link yabai configuration
mv "$HOME/.yabairc" "$HOME/.yabairc.bak"
mv "$HOME/.skhdrc" "$HOME/.skhdrc.bak"
ln -sf "$HOME/.dotfiles/nix/osx/yabai/yabairc" "$HOME/.yabairc"
ln -sf "$HOME/.dotfiles/nix/osx/yabai/skhdrc" "$HOME/.skhdrc"

echo "yabai setup complete"
