#!/bin/bash

# Go to dotfiles directory
cd ~/Documents/dotfiles/.config || exit

echo "Linking with zsh..."
stow -t ~ zsh

for dir in alacritty fish ghostty lazygit mise nvim nvim-josean powershell tmux tmux-josean vim vscode wezterm zed; do
  if [ -d "$dir" ]; then
    echo "Linking with $dir..."

    mkdir -p ~/.config/"$dir"

    stow -t ~/.config/"$dir" "$dir"
  fi
done

echo "Completed!"
