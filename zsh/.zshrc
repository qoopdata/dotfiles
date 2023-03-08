# exporting zsh src
export ZSH="$HOME/.oh-my-zsh"

# theme
ZSH_THEME="darkblood"
DARKBLOOD_COLOR_01=orange

# plugins
plugins=(git rust python)

# starting oh-my-zsh over zsh
source $ZSH/oh-my-zsh.sh

# expanding `cd` function
function cd() {
        builtin cd "$@" && ls
}

# expanding `clear` function
function clear() {
        command clear
        ls
}
