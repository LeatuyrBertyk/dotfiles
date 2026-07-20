#!/bin/bash

# Extension list
extensions=(
  "eamodio.gitlens"
  "esbenp.prettier-vscode"
  "fabian-hiller.pace-theme"
  "miguelsolorio.symbols"
  "ms-vscode.cmake-tools"
  "ms-vscode.cpp-devtools"
  "ms-vscode.cpptools"
  "ms-vscode.cpptools-extension-pack"
  "shd101wyy.markdown-preview-enhanced"
  "vscodevim.vim"
)

# Install each extension in list
for ext in "${extensions[@]}"; do
  echo "Installing $ext..."
  code --install-extension "$ext"
done

echo "All extensions installed!"
