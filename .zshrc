############
# ~/.zshrc #
############

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
PATH=$PATH:$HOME/.local/bin

# Random zsh shit idk lol
zstyle :compinstall filename '/home/znx/.zshrc'
autoload -Uz compinit
compinit

# KeyBinds
bindkey "\e[1;5C" emacs-forward-word
bindkey "\e[1;5D" emacs-backward-word
bindkey "^H" backward-kill-word

# Env Vars
export QT_QPA_PLATFORMTHEME="qt5ct" 

# Aliases
alias ls='ls -a --color'
alias pagman="pacman"
alias fetch="fastfetch"
alias pacview="pacman -Qq | fzf --preview 'pacman -Qil {}'; --layout=reverse"

# Prompt
PROMPT='%B%F{cyan}%f%K{cyan}%F{black} %n %~ %f%k%F{cyan} $ %f%b'

# Init
fetch

