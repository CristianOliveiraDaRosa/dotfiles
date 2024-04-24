#!/bin/bash

read -p "Do you want to install Nix? (y/n) " ANSWER
if [[ $ANSWER =~ ^[Yy]$ ]]; then
  echo "Installing Nix"
  sh <(curl -L https://nixos.org/nix/install)
else
  echo "Skipping Nix installation"
fi

read -p "Do you want to install Nix Darwin? (y/n) " ANSWER
if [[ $ANSWER =~ ^[Yy]$ ]]; then
  echo "Installing Nix Darwin"
  sh -c "nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer"
  ./result/bin/darwin-installer
else
  echo "Skipping Nix Darwin installation"
fi

echo "Linking Nix Darwin configuration"
mkdir -p "$HOME/.nixpkgs"
rm -f "$HOME/.nixpkgs/darwin-configuration.nix"
ln -s "$HOME/.dotfiles/nix/osx/configuration.nix" "$HOME/.nixpkgs/darwin-configuration.nix"


if [ ! -f "$HOME/.config/nix/nix.conf" ]; then
  echo "Configuring Nix (~/.dotfiles/nix/nix.conf)"
  mkdir -p "$HOME/.config/nix"
  ln -s "$HOME/.dotfiles/nix/nix.conf" "$HOME/.config/nix/nix.conf"
fi

echo "Setting up OSX applications"
"$HOME"/.dotfiles/nix/osx/yabai/setup.sh
"$HOME"/.dotfiles/nix/osx/finicky/setup.sh
"$HOME"/.dotfiles/nix/osx/karabiner/setup.sh

echo "Setting up shared applications"
"$HOME"/.dotfiles/nvim/setup.sh
"$HOME"/.dotfiles/tmux/setup.sh
"$HOME"/.dotfiles/zsh/setup.sh
"$HOME"/.dotfiles/nix/shared/alacritty/setup.sh
"$HOME"/.dotfiles/git/setup.sh

# So darwin-rebuild is available in the new shell
sh -c "$HOME/.dotfiles/nix/rebuild.sh"

echo "System is ready to be built with ~/.dotfiles/nix/rebuild.sh"
