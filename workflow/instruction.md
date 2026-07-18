# Some tip to boost workflow speed

Those content below illustrates some of my skills to boost speed when using workspace.

## Fish shell

1. Type `ctrl + o` to open **fzf** in current directory, can use this shortcut with many commands (such as `nvim` or `cd` or `mv`) for personal purpose
2. Type `ctrl + r` to open history used commands


## Tmux

1. Create new session: `ctrl + tc`
2. Move to other sessions:
   - Previous session: `ctrl + tp`
   - Next session: `ctrl + tn`
   - Detailed session: `ctrl + t<session_id>`
3. Split windows in current session:
   - Right split window: `ctrl + t + |`
   - Below split window: `ctrl + t + -`
   - To move between windows: `ctrl + t + <direct>`, where `<direct>` is `h` (left), `l` (right), `k` (up), and `j` (down)

## Neovim

1. Split windows:
   - Below split tab: `ss`
   - Right split tab: `sv`
   - New tab: `te`

   Then use `space + ff` to search and open file.
2. Open terminal:
   - Below split terminal: `space + ft` or `Sterm`
   - Right split terminal: `Vterm`
3. Search content:
   - Search any content in any file in current directory: `space + sg`
