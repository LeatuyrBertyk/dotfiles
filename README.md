![fish screenshot](./images/screenshot-shell.png)

![nvim screenshot](./images/screenshot-neovim.png)

# Leatuyr Bertyk's dotfiles

My workspace is based on [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public) by Takuya Matsuyama (a freelancer from Japan who created [Inkdrop](https://www.inkdrop.app/)) and [josean-dev/dev-environment-files](https://github.com/josean-dev/dev-environment-files) by Josean Martinez (a full-stack software engineer). I added personal changes to make the original configurations suitable for my coding workspace on Ubuntu (26.04 LTS) and Windows 10.

## Main workspace

I primarily use Ubuntu as my default workspace because of its versatility. Main tools:

- **Kitty** and **Ghostty** - Default terminal; I usually use Kitty
- **tmux** - Terminal multiplexer
- **yazi** - Terminal file manager
- **Fish** - Default shell; convenient, but uses a unique configuration style
- **Neovim** - Default text editor; Lazy.nvim is the core structure
- **Visual Studio Code** - Another code editor suitable for collaboration or large projects
- **Zed** - New AI code editor, suitable for **Quarto**
- **Git** - Project version control system
- **lazygit** - GUI Git manager

***Optional:***

- **zsh** - Alternative shell with basic configuration
- **Alacritty** and **Wezterm** - Other terminals with different advantages (depending on user needs)
- **Vim** - Legendary code editor; fast, but older and harder to configure

## Requirements

### Shell setup (macOS & Linux)

- Neovim >=**0.9.0** (built with **LuaJIT**)
- [LazyVim](https://www.lazyvim.org/)
- Git >=**2.19.0**
- [lazygit](https://github.com/jesseduffield/lazygit)
- [Nodejs](https://nodejs.org/en)
- [yazi](https://github.com/sxyazi/yazi)
- [Visual Studio Code](https://code.visualstudio.com/) ***(optional)***
- [Zed](https://zed.dev/) ***(optional)***
- [Vim](https://www.vim.org/) ***(optional)***
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) ***(optional)***
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that supports true color and *undercurl*:
  - [Ghostty](https://github.com/ghostty-org/ghostty) ***(Linux & Macos)*** (recommended for macOS)
  - [Kitty](https://github.com/kovidgoyal/kitty) ***(Linux & Macos)*** (recommended for Linux)
  - [Wezterm](https://github.com/wez/wezterm) ***(Linux, Macos & Windows)***
  - [Alacritty](https://github.com/alacritty/alacritty) ***(Linux, Macos & Windows)***
  - [iterm2](https://iterm2.com/) ***(Macos)***
- [tmux](https://github.com/tmux/tmux/wiki)
- [Solarized Osaka](https://github.com/craftzdog/solarized-osaka.nvim)
- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Tide](https://github.com/IlanCosman/tide) - Shell theme
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Patched fonts for development use; I use [PlemolJP](https://github.com/yuru7/PlemolJP) and [BlexMono](https://www.nerdfonts.com/font-downloads)
- [z for fish](https://github.com/jethrokuan/z) - Directory jumping
- [Eza](https://github.com/eza-community/eza) - `ls` replacement
- [ghq](https://github.com/x-motemen/ghq) - Local Git repository organizer
- [fzf](https://github.com/PatrickF1/fzf.fish) - Interactive filtering
- [bat](https://github.com/sharkdp/bat) - Better `cat`

### PowerShell setup (Windows)

- Neovim >=**0.9.0** (built with **LuaJIT**)
- [LazyVim](https://www.lazyvim.org/)
- Git >=**2.19.0**
- [lazygit](https://github.com/jesseduffield/lazygit)
- [Nodejs](https://nodejs.org/en)
- [Visual Studio Code](https://code.visualstudio.com/) ***(optional)***
- [Zed](https://zed.dev/) ***(optional)***
- [Vim](https://www.vim.org/) ***(optional)***
- [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/install) - Default terminal manager
- [PowerShell 7](https://learn.microsoft.com/en-us/powershell/scripting/install/install-powershell-on-windows?view=powershell-7.6) - Default shell
- [MSYS2](https://www.msys2.org/) - a `C/C++` compiler for Windows
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Patched fonts for development use; I use [Hack Nerd Font](https://www.nerdfonts.com/font-downloads)
- [Scoop](https://scoop.sh/) - A command-line installer
- [Git for Windows](https://gitforwindows.org/)
- [Oh My Posh](https://ohmyposh.dev/) - Prompt theme engine
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons
- [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/) - Cmdlets for customizing the editing environment, used for autocompletion
- [z](https://www.powershellgallery.com/packages/z) - Directory jumper
- [PSFzf](https://github.com/kelleyma49/PSFzf) - Fuzzy finder

## Shell setup (macOS & Linux)

> [!IMPORTANT]
> Available for all **EXCEPT** `dotfiles/.config/powershell`.

First, make sure you have downloaded all required tools, packages, and dependencies. Then, to simplify installation, use [GNU Stow](https://github.com/aspiers/stow) to automatically link configuration files from dotfiles to the system. Follow the steps below:

1. Clone the repository:
   ```bash
   cd ~/Documents/ &&
   git clone https://github.com/LeatuyrBertyk/dotfiles/
   ```
2. Set executable permission:
   ```bash
   cd ~/Documents/dotfiles/ &&
   chmod +x install-stow.sh
   ```
3. Stow all configuration to system:
   ```bash
   ./install-stow.sh
   ```

> [!TIP]
> If you do not want to stow any configuration, you can change content in `install-stow.sh` file suitable for your purpose before using `./install-stow.sh` command.

> [!WARNING]
> **GNU Stow** is sensitive, so make sure your personal system configuration files do not already exist before using `./install-stow.sh` to prevent overwriting errors. Typically, those files do not exist on a first-time installation. If they do exist, back them up before running this command.

After stowing the configuration, your **Fish** theme may appear very simple because the **Tide** plugin has not started. Follow the remaining steps below:

4. Open `tide` theme configuration:
   ```bash
   tide configure
   ```
5. Customize the theme:

   Choose the options you want at each step, then type `y` at the end to accept the changes. My theme choices were: `2 1 3 3 1 1 4 2 1 2 3 2 1 2`, followed by `y`.

> [!TIP]
> If you want to use `dotfiles/config/nvim-josean` as the default **Neovim** configuration, first back up your existing `nvim` folder, then rename `nvim-josean` to `nvim`. Do the same for **Tmux** using `dotfiles/config/tmux-josean`. For **Zed**, swap the names of the two `.json` files in `dotfiles/config/zed/` such that the official configuration is in `settings.json`.

## Powershell setup (Windows)

> [!IMPORTANT]
> Available only for `dotfiles/config/nvim`, `nvim-josean`, `powershell`, `vim`, `vscode`, and `zed`. The shell referred to here is **PowerShell 7** from the **Microsoft Store**, not the default Windows PowerShell.

Make sure you have downloaded all required tools, packages, and dependencies. Windows is not as ideal an environment for coding as Linux or macOS, so this setup may take some time.

First, clone the repository:
```bash
cd ~/Documents &&
git clone https://github.com/LeatuyrBertyk/dotfiles/ &&
cd dotfiles
```

### PowerShell and Neovim setup

Be patient, as this configuration may encounter some issues.

1. Move configuration files to the correct directory:

   - Move the `powershell` folder to `C:/Users/<user_name>/.config` (the same directory as `scoop`):
     ```powershell
     Copy-Item -Path "~/Documents/dotfiles/config/powershell/takuya.omp.json" -Destination "~/.config/powershell/takuya.omp.json" -Force;
     Copy-Item -Path "~/Documents/dotfiles/config/powershell/user_profile.ps1" -Destination "~/.config/powershell/user_profile.ps1" -Force
     ```
   - Move the `nvim` folder to `$env:LOCALAPPDATA`:
     ```powershell
     Copy-Item -Path "~/Documents/dotfiles/config/nvim/*" -Destination "$env:LOCALAPPDATA/nvim" -Recurse -Force
     ```

> [!TIP]
> If you want to use `dotfiles/config/nvim-josean` as the default **Neovim** configuration, first back up your existing `nvim` folder, then rename `nvim-josean` to `nvim`. Do the same for **Tmux** using `dotfiles/config/tmux-josean`. For **Zed**, swap the names of the two files in `dotfiles/config/zed/` such that the official configuration is in `settings.json`.

2. Set theme and other settings:

   Open `settings.json` in **Windows Terminal** settings, remove all current content, then paste the configuration from `dotfiles/config/powershell/settings.json` and save it.

   *Note: perform this step manually because the exact directory of `settings.json` depends on the version of the app installed. This is one of the drawbacks of using Windows.*
3. Make sure **PowerShell** uses the correct configuration files:

   Because **PowerShell 7** is not the default on Windows, it may use `~/Documents/Powershell/Microsoft.PowerShell_profile.ps1`. This is not an ideal practice. To fix this, link **PowerShell 7** to the default configuration:
   ```powershell
   nvim $PROFILE.CurrentUserCurrentHost
   ```
   Then paste the following source code into that file:
   ```powershell
   . $env:USERPROFILE\.config\powershell\user_profile.ps1
   ```
   Remember to save the file with `:wq` in **Neovim**.
4. Install `clangd` for `C/C++` coding suggestions:

   Open the **UCRT64** terminal and use this command *(it cannot be pasted, so type it directly in the terminal)*:
   ```bash
   pacman -S mingw-w64-ucrt-x86_64-clang mingw-w64-ucrt-x86_64-clang-tools-extra
   ```

   Type `y` for all requirements or suggestions.
5. Download `clangd` for **Neovim**:

   Open **Neovim**, type `:Mason`, then find `clangd` and install it.
6. Link **Neovim** with `clangd`:

   Although you installed `clangd` through Mason in **Neovim**, the system may still not link to it because of conflicting directory management between **MSYS2** and Windows.

   To fix this, copy the configuration file to `$env:LOCALAPPDATA/nvim/lua/plugins/lsp.lua`:
   ```powershell
   Copy-Item -Path "~/Documents/dotfiles/config/powershell/lsp.lua" -Destination "$env:LOCALAPPDATA/nvim/lua/plugins/lsp.lua" -Force
   ```

### Vim, Visual Studio Code, and Zed setup

Use commands below to update the configuration files in the system:

- For **Vim**:
  ```powershell
  Copy-Item -Path "~/Documents/dotfiles/config/vim/.vimrc.plug" -Destination "~/.vimrc.plug" -Force;
  Copy-Item -Path "~/Documents/dotfiles/config/vim/vimrc" -Destination "~/.vimrc" -Force;
  ```
- For **VSCode**:
  ```powershell
  Copy-Item -Path "~/Documents/dotfiles/config/vscode/settings.json" -Destination "$env:APPDATA\Code\User\settings.json" -Force;
  ```
- For **Zed**:
  ```powershell
  Copy-Item -Path "~/Documents/dotfiles/config/zed/settings.json" -Destination "$env:APPDATA\Zed\settings.json" -Force
  ```
