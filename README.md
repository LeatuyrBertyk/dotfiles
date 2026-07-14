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

- Neovim >=**0.9.0** (needs to be built with **LuaJIT**)
- Git >=**2.19.0**
- [LazyVim](https://www.lazyvim.org/)
- a [Nerd Font](https://www.nerdfonts.com/)(v3.0 or greater) ***(optional, but needed to display some icons)***
- [lazygit](https://github.com/jesseduffield/lazygit)
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
- [yazi](https://github.com/sxyazi/yazi)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Zed](https://zed.dev/)

## Shell setup (macOS & Linux)

- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Tide](https://github.com/IlanCosman/tide) - Shell theme
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Patched fonts for development-use. I use [PlemolJP](https://github.com/yuru7/PlemolJP) and BlexMono.
- [z for fish](https://github.com/jethrokuan/z) - Directory jumping
- [Eza](https://github.com/eza-community/eza) - `ls` replacement
- [ghq](https://github.com/x-motemen/ghq) - Local Git repository organizer
- [fzf](https://github.com/PatrickF1/fzf.fish) - Interactive filtering

## PowerShell setup (Windows)

- [Scoop](https://scoop.sh/) - A command-line installer
- [Git for Windows](https://gitforwindows.org/)
- [Oh My Posh](https://ohmyposh.dev/) - Prompt theme engine
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons
- [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/) - Cmdlets for customizing the editing environment, used for autocompletion
- [z](https://www.powershellgallery.com/packages/z) - Directory jumper
- [PSFzf](https://github.com/kelleyma49/PSFzf) - Fuzzy finder

## How to setup

To make a simple workflow, you should use [GNU Stow](https://github.com/aspiers/stow) tool to automatically link configuration in dotfiles directly to system. Follow below steps for details.

1. Clone the repository:

   ```bash
   git clone https://github.com/LeatuyrBertyk/dotfiles/
   ```
2. Set executable permisson:

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

***Optional:*** If you want to use `nvim-josean` as default Neovim configuration, first make a back-up (rename) for `nvim`, then rename `nvim-josean` to `nvim`. Get the same manipulation with `tmux-josean`.
