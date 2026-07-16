# Configuration Powershell on Windows

Note that this configuration is for **Powershell** downloaded from **Microsoft Store**, is not the default Powershell on Windows. Therefore, you need to put the config files in correct directory.

## Requirements

- Neovim >=**0.9.0** (needs to be built with **LuaJIT**)
- [LazyVim](https://www.lazyvim.org/)
- Git >=**2.19.0**
- [lazygit](https://github.com/jesseduffield/lazygit)
- [Nodejs](https://nodejs.org/en)
- [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/install) - Default terminal manager
- [Powershell 7](https://learn.microsoft.com/en-us/powershell/scripting/install/install-powershell-on-windows?view=powershell-7.6) - Default shell
- [MSYS2](https://www.msys2.org/) - `C/C++` compiler for Windows
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Patched fonts for development-use. I use Hack Nerd Font
- [Scoop](https://scoop.sh/) - A command-line installer
- [Git for Windows](https://gitforwindows.org/)
- [Oh My Posh](https://ohmyposh.dev/) - Prompt theme engine
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons
- [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/) - Cmdlets for customizing the editing environment, used for autocompletion
- [z](https://www.powershellgallery.com/packages/z) - Directory jumper
- [PSFzf](https://github.com/kelleyma49/PSFzf) - Fuzzy finder

## How to setup

*Note: this configuration is only for **nvim** and **nvim-josean**, **vim**, **vscode**, and **zed**.*

First of all, you have to clone this repository to local computer:
1. Clone the repository:

   ```bash
   git clone https://github.com/LeatuyrBertyk/dotfiles/
   ```

For **vim**, **vscode** and **zed**, you should copy the each config folder directly to config directory on your computer (copy/paste by hand).

For **Terminal** and **Neovim** setup, make sure you have downloaded all needed tools, packages and dependencies. Windows OS is not an ideal environment for coding as Ubuntu or Macos, so this setup may take much time, following below steps:

2. Move config files to correct directory:

   - Move folder `powershell` to `C:/Users/<user_name>/.config` (same directory with `scoop`).
   - Move folder `nvim` to `$env:LOCALAPPDATA`.
3. Set theme and other settings:
   
   Open file `settings.json` in settings of **Windows Terminal**, remove all current content in this file, then paste new config in `powershell/settings.json` into this file, and save it.
4. Make sure **Powershell** get the correct config files:
   
   Because we are using **Powershell 7**, which is not the default on Windows, so in fact, it will take the config in directory `Documents/Powershell/Microsoft.PowerShell_profile.ps1`. However, this manipulation is not a good practise. To handle this problem, we have to link **Powershell 7** with the config of default setup:
   ```bash
   nvim $PROFILE.CurrentUserCurrentHost
   ```
   Then paste below source code into this file:
   ```
   . $env:USERPROFILE\.config\powershell\user_profile.ps1
   ```
5. Install `clangd` for coding suggestions:
    
   Open the **UCRT64** terminal and use this command *(cannot paste so you have to type directly on this terminal)*:
   ```bash
   pacman -S mingw-w64-ucrt-x86_64-clang mingw-w64-ucrt-x86_64-clang-tools-extra
   ```
    
   Type `y` for all requirements or suggestions.
6. Download `clangd` for **Neovim**:
    
   Open **Neovim**, and type `:Mason`, then find `clangd` and install it.
7. Link **Neovim** with `clangd`:
    
   Although you used **Mason** plugins manager to install `clangd` in **Neovim**, system still can not link to this tool as the confliction between directory of **MSYS2** and Windows OS.

   To handle this problem, go to directory `$env:LOCALAPPDATA/nvim/lua/plugins/lsp.lua`, remove all current content in the file. Then paste new configuration in `lsp.lua` file.
