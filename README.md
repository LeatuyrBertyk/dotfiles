# Leatuyr Bertyk's dotfiles

My workspace is created based on [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public) - a repository of Takuya Matsuyama (a freelancer from Japan, who created InkDrop), and [josean-dev/dev-environment-files](https://github.com/josean-dev/dev-environment-files) - a default workspace of Josean Matinez (a full-stack software engineer). And I have added some personal implementation to make the original configurations suitable for my coding workspace on Ubuntu (26.04 LTS) and Windows 10.

## Main workspace

I almost use Ubuntu OS for default workspace as its versatility, with main tools:

- **ghostty** - Default terminal
- **tmux** - Terminal multiplexer
- **yazi** - Terminal file manager
- **fish** - Default shell, convenience but has a weird configuration method
- **Neovim** - Default text editor, with Lazy.nvim is core structure
- **Visual Studio Code** - Another code editor, suitable for collaboration or big projects
- **Zed** - New AI code editor, suitable for **Quarto**
- **Git** - Project version control system
- **lazygit** - GUI Git manager 

***Optional:***

- **zsh** - Original shell, basic configuration
- **alacritty** and **wezterm** - Other terminal with other advantages (depends on users' purpose)
- **Vim** - Legendary code editor with fast speed, but old and hard to add new configuration

## Requirements

### Shell setup (macOS & Linux)

- Neovim >=**0.9.0** (needs to be built with **LuaJIT**)
- [LazyVim](https://www.lazyvim.org/)
- Git >=**2.19.0**
- [lazygit](https://github.com/jesseduffield/lazygit)
- [Nodejs](https://nodejs.org/en)
- [yazi](https://github.com/sxyazi/yazi)
- [Visual Studio Code](https://code.visualstudio.com/) ***(optional)***
- [Zed](https://zed.dev/) ***(optional)***
- [vim](https://www.vim.org/) ***(optional)***
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) ***(optional)***
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that support true color and *undercurl*:
  - [ghostty](https://github.com/ghostty-org/ghostty) ***(Linux & Macos)*** (recommended)
  - [kitty](https://github.com/kovidgoyal/kitty) ***(Linux & Macos)***
  - [wezterm](https://github.com/wez/wezterm) ***(Linux, Macos & Windows)***
  - [alacritty](https://github.com/alacritty/alacritty) ***(Linux, Macos & Windows)***
  - [iterm2](https://iterm2.com/) ***(Macos)***
- [Solarized Osaka](https://github.com/craftzdog/solarized-osaka.nvim)
- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Tide](https://github.com/IlanCosman/tide) - Shell theme
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Patched fonts for development-use. I use [PlemolJP](https://github.com/yuru7/PlemolJP) and BlexMono.
- [z for fish](https://github.com/jethrokuan/z) - Directory jumping
- [Eza](https://github.com/eza-community/eza) - `ls` replacement
- [ghq](https://github.com/x-motemen/ghq) - Local Git repository organizer
- [fzf](https://github.com/PatrickF1/fzf.fish) - Interactive filtering

### PowerShell setup (Windows)

- Neovim >=**0.9.0** (needs to be built with **LuaJIT**)
- [LazyVim](https://www.lazyvim.org/)
- Git >=**2.19.0**
- [lazygit](https://github.com/jesseduffield/lazygit)
- [Nodejs](https://nodejs.org/en)
- [Visual Studio Code](https://code.visualstudio.com/) ***(optional)***
- [Zed](https://zed.dev/) ***(optional)***
- [vim](https://www.vim.org/) ***(optional)***
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

### macOS & Linu setup

*Note: available for all except **powershell**.*

First of all, make sure you have downloaded all needed tools, packages and dependencies. Then, to make a simple workflow, you should use [GNU Stow](https://github.com/aspiers/stow) tool to automatically link configuration in dotfiles directly to system. Follow below steps for details:

1. Clone the repository:

   ```bash
   cd ~/Documents/ &&
   git clone https://github.com/LeatuyrBertyk/dotfiles/ &&
   cd ..
   ```
2. Set executable permission:

   ```bash
   cd ~/Documents/dotfiles/ && chmod +x install-stow.sh
   ```
4. Stow all config to system:

   ```bash
   ./install-stow.sh
   ```

*Note: **GNU Stow** is very sensitive, so make sure that your config file do not exist before using `./install-stow.sh`. To prevent risks, you can make back-up folders for your config before using this command.*

After stowing this configuration, when opening terminal, you can see the fish theme is very simple. The reason is that `tide` plugin is not run, so to handle this problem, you should follow some steps below:

5. Open `tide` configuration:

   ```bash
   tide configure
   ```
6. Customize the theme you prefer:

   In each step, you can choose any choice that you like. Then type `y` at last to accept all changes. Besides, my theme is followed this chain: `2 1 3 3 1 1 4 2 1 2 3 2 1 2` and `y` at last.

***Optional:*** If you want to use `nvim-josean` as default **Neovim** configuration, first make a back-up (rename) for `nvim`, then rename `nvim-josean` to `nvim`; and get the same manipulation with `tmux-josean`. In addition, with **Zed**, you can swap names of two files in `dotfiles/zed/` such that the official configuration is in file `settings.json`.

### Windows setup

*Note: available only for **nvim, nvim-josean, powershell, vim, vscode, zed**. And the shell I mention here is **Powershell 7**, which downloaded from **Microsoft Store**, is not the default Powershell on Windows.*

Make sure you have downloaded all needed tools, packages and dependencies. Windows OS is not an ideal environment for coding as Linux or macOS, so this setup may take much time.

First, clone the repository:
```bash
cd ~/Documents &&
git clone https://github.com/LeatuyrBertyk/dotfiles/ &&
cd..
```

#### Powershell and Neovim setup

Keep patient as this configuration may take many troubles.

1. Move config files to correct directory:

   - Move folder `powershell` to `C:/Users/<user_name>/.config` (same directory with `scoop`):
     ```powershell
     Copy-Item -Path "~/Documents/dotfiles/powershell/takuya.omp.json" -Destination "~/.config/powershell/takuya.omp.json" -Force;
     Copy-Item -Path "~/Documents/dotfiles/powershell/user_profile.ps1" -Destination "~/.config/powershell/user_profile.ps1" -Force
     ```
   - Move folder `nvim` to `$env:LOCALAPPDATA`:
     ```powershell
     Copy-Item -Path "~/Documents/dotfiles/nvim/*" -Destination "$env:LOCALAPPDATA/nvim" -Recurse -Force
     ```
   ***Optional:*** If you want to use `nvim-josean` as default **Neovim** configuration, first make a back-up (rename) for `nvim`, then rename `nvim-josean` to `nvim`. Get the same manipulation with `tmux-josean`.
2. Set theme and other settings:

   Open file `settings.json` in settings of **Windows Terminal**, remove all current content in this file, then paste new config in `powershell/settings.json` into this file, and save it.

   *Note: you should do this step by hand as the directory of `settings.json` depends on each user's computer, this is the disadvantages of using Windows.*
3. Make sure **Powershell** get the correct config files:

   Because we are using **Powershell 7**, which is not the default on Windows, so in fact, it will take the config in directory `~/Documents/Powershell/Microsoft.PowerShell_profile.ps1`. However, this manipulation is not a good practise. To handle this problem, we have to link **Powershell 7** with the config of default setup:
   ```powershell
   nvim $PROFILE.CurrentUserCurrentHost
   ```
   Then paste below source code into this file:
   ```
   . $env:USERPROFILE\.config\powershell\user_profile.ps1
   ```
4. Install `clangd` for coding suggestions:

   Open the **UCRT64** terminal and use this command *(cannot paste so you have to type directly on this terminal)*:
   ```bash
   pacman -S mingw-w64-ucrt-x86_64-clang mingw-w64-ucrt-x86_64-clang-tools-extra
   ```

Type `y` for all requirements or suggestions.
5. Download `clangd` for **Neovim**:

   Open **Neovim**, and type `:Mason`, then find `clangd` and install it.
6. Link **Neovim** with `clangd`:

   Although you used **Mason** plugins manager to install `clangd` in **Neovim**, system still can not link to this tool as the confliction between directory of **MSYS2** and Windows OS.

   To handle this problem, you should change some config of `$env:LOCALAPPDATA/nvim/plugins/lsp.lua`:
   ```powershell
   Copy-Item -Path "~/Documents/dotfiles/powershell/lsp.lua" -Destination "$env:LOCALAPPDATA/nvim/lua/plugins/lsp.lua" -Force
   ```

#### Vim, VScode and Zed setup

- For **Vim**:
  ```powershell
  Copy-Item -Path "~/Documents/dotfiles/vim/.vimrc.plug" -Destination "~/.vimrc.plug" -Force
  Copy-Item -Path "~/Documents/dotfiles/vim/vimrc" -Destination "~/.vimrc" -Force
  ```
- For **Vscode**:
  ```powershell
  Copy-Item -Path "~/Documents/dotfiles/vscode/settings.json" -Destination "$env:APPDATA\Code\User\settings.json" -Force
  ```
- For **Zed**:
  ```powershell
  Copy-Item -Path "~/Documents/dotfiles/zed/settings.json" -Destination "$env:APPDATA\Zed\settings.json" -Force
  ```
