# My zshrc setting
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# Set theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Set default terminal
source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"
alias build="time g++ main.cpp -g -o run.exe"
alias buildlray="gcc main.c -o app -lraylib -lGL -lm -lpthread -ldl -lrt -lX11"
alias app="./app"
alias buildall="time g++ *.cpp -g -o run.exe"
alias run="./run.exe"
alias cmbuild='mkdir -p build && cd build && cmake .. && cmake --build . && cd ..'
alias cmrun='build/bin/app'
alias python="python3"
alias y="yazi"

# Eza (Better ls)
alias ls="eza --icons=always"
alias tree="eza --tree --icons"
alias treefull="eza --tree --icons --long"

# Zoxide (Better cd)
eval "$(zoxide init zsh)"
alias cd="z"

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$PATH:/home/leatuyrbertyk/.local/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Added by Antigravity CLI installer
export PATH="/home/leatuyrbertyk/.local/bin:$PATH"
