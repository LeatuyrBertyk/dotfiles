# Some tips to boost workflow speed

This file shows shortcuts and techniques to speed up workflows on macOS and Linux.

## Fish shell

1. Type `ctrl + o` to open **fzf** in the current directory. You can use this shortcut with many commands (such as `nvim`, `cd`, or `mv`).
2. Type `ctrl + r` to open the command history.

## Tmux

1. Create a new session: `ctrl + tc`
2. Switch between sessions:
   - Previous session: `ctrl + tp`
   - Next session: `ctrl + tn`
   - Specific session: `ctrl + t<session_id>` *(`<session_id` could be `0`, `1`, `2`,...)*
3. Split panes in the current session:
   - Vertical split: `ctrl + t + |`
   - Horizontal split: `ctrl + t + -`
   - Move between panes: `ctrl + t + <direction>`, where `<direction>` is `h` (left), `l` (right), `k` (up), and `j` (down)

## Neovim

1. Split windows:
   - Horizontal split: `ss`
   - Vertical split: `sv`
   - New tab: `te`

   Then use `space + ff` to search for and open a file.

2. Open a terminal:
   - Horizontal split terminal: `space + ft` or `Sterm`
   - Vertical split terminal: `Vterm`
3. Search content:
   - Search any content in any file in the current directory: `space + sg`
4. Cursor:
   - When typing an uncompleted keyword, **Neovim** will show a suggestion list, use `ctrl + n` to switch to next and `ctrl + p` to previous.
   - In a line, use `0` to cursor to the start of current line and `shift + 4` to cursor to the end.
