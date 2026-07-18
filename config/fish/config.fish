set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias build "time g++ main.cpp -g -o run.exe"
alias buildlray "gcc main.c -o app -lraylib -lGL -lm -lpthread -ldl -lrt -lX11"
alias app "./app"
alias buildall "time g++ *.cpp -g -o run.exe"
alias run "./run.exe"
alias cmbuild 'mkdir -p build && cd build && cmake .. && cmake --build . && cd ..'
alias cmrun build/bin/app
alias python python3
alias y yazi
alias g git
alias c claude
alias claude-yolo "claude --dangerously-skip-permissions"
alias drp "sudo docker run --name postgres-1 -v (pwd):/app -w /app -e POSTGRES_PASSWORD=mysecret -d -p 5432:5432 postgres:16-alpine"
alias dpsql "sudo docker exec -it postgres-1 psql -U postgres"
alias rundpsql "sudo docker exec -i postgres-1 psql -U postgres -f"

# command -qv nvim && alias vim nvim
set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# Bat
set -gx PATH ~/.cargo/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end
