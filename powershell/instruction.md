# Configuration

1.  Move to correct directory:

    - Move folder `powershell` to `C:/Users/<user_name>/.config` (same directory with `scoop`).
    - Move folder `nvim` to `$env:LOCALAPPDATA`.

2.  Install `clangd` for coding suggestions:
    
    Open the **UCRT64** terminal, then type:
    ```bash
    pacman -S mingw-w64-ucrt-x86_64-clang mingw-w64-ucrt-x86_64-clang-tools-extra
    ```
    
    Type `y` for all requirements or suggestions.

3.  Link **Neovim** with `clangd`:
    
    Go to directory `$env:LOCALAPPDATA/nvim/lua/plugins/lsp.lua`, remove all current content in the file. Then paste new configuration in `lsp.lua`.
