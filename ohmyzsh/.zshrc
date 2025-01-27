# Directories 
export ZSH="$HOME/.oh-my-zsh"
export REPOS="$HOME/Documents/repos"
export DOTFILES="$REPOS/dotfiles"

# Aliases
# cd
alias ..="cd .."

# Repos
alias dot='cd $DOTFILES'
alias repos='cd $REPOS'

alias c="clear"

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'

# finds all files recursively and sorts by last modification, ignore hidden files
alias lastmod='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias sv='sudoedit'
alias t='tmux'
alias e='exit'
alias syu='sudo pacman -Syu'

# git
alias gp='git pull'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'

# GIT

plugins=(git)

PROMPT='%F{gray}%n@%m %F{green}%1~ $(git_prompt_info)%f $ '
ZSH_THEME_GIT_PROMPT_PREFIX="%F{green}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%f"

source $ZSH/oh-my-zsh.sh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh