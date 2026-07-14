# Configuration on Windows

Make sure you have downloaded **MSYS2** as `C/C++` compiler on Windows.

Windows OS is not an ideal environment for coding as Ubuntu or Macos, so you have to copy/paste config files directly by hand. Following below steps:

1.  Move to correct directory

    - Move folder `powershell` to `C:/Users/<user_name>/.config` (same directory with `scoop`).
    - Move folder `nvim` to `$env:LOCALAPPDATA`.

2.  Install `clangd` for coding suggestions
    
    Open the **UCRT64** terminal and use this command *(cannot paste so you have to type directly on this terminal)*:
    ```bash
    pacman -S mingw-w64-ucrt-x86_64-clang mingw-w64-ucrt-x86_64-clang-tools-extra
    ```
    
    Type `y` for all requirements or suggestions.
3.  Download `clangd` for Neovim
    
    Open Neovim, and type `:Mason`, then find `clangd` and install it.

4.  Link Neovim with `clangd`
    
    Although using **Mason** plugins manager to install `clangd` in Neovim, system still can not link to this tool as the confliction between directory of **MSYS2** and Windows OS.

    To handle this problem, go to directory `$env:LOCALAPPDATA/nvim/lua/plugins/lsp.lua`, remove all current content in the file. Then paste new configuration in `lsp.lua` file.
