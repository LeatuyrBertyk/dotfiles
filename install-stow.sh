#!/bin/bash

# Go to dotfiles directory
cd ~/Documents/dotfiles/config || exit

echo "Linking with zsh..."
stow -t ~ zsh

echo "Linking with vscode..."
stow -t ~/.config/Code/User vscode

for dir in alacritty fish ghostty kitty lazygit mise nvim nvim-josean tmux tmux-josean vim wezterm zed; do
  if [ -d "$dir" ]; then
    echo "Linking with $dir..."

    mkdir -p ~/.config/"$dir"

    stow -t ~/.config/"$dir" "$dir"
  fi
done

echo "Completed!"
