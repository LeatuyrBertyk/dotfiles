#!/bin/bash

# Go to dotfiles directory
cd ~/Documents/dotfiles/config || exit

# For zsh:
# If not need, comment two lines below.
echo "Linking with zsh..."
stow -t ~ zsh

# For VSCode:
# If not need, comment two lines below.
echo "Linking with vscode..."
stow -t ~/.config/Code/User vscode

# For others:
# If not need configure any tool, remove it.
# If not all, comment five lines below.
for dir in alacritty fish ghostty kitty lazygit mise nvim nvim-josean tmux tmux-josean vim wezterm zed; do
  if [ -d "$dir" ]; then
    echo "Linking with $dir..."
    mkdir -p ~/.config/"$dir"
    stow -t ~/.config/"$dir" "$dir"
  fi
done

# Stowing completion notification:
echo "Completed!"
