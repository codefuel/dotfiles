alias reload!='. ~/.bashrc'

alias sl=ls
alias ls='ls -G'
alias la='ls -AF'
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'

alias _='sudo'

if [ $(uname) = "Linux" ]; then
  alias ls="ls --color=always"
fi

alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

# Shell History
alias h='history'

alias md='mkdir -p'
alias rd='rmdir'

# Dotfile Management
alias bashrc='vi $HOME/.bashrc'
alias localrc='vi $HOME/.localrc'
alias sourcebash='source $HOME/.bashrc; echo "DONE: source $HOME/.bashrc"'
alias sourcelocal='source $HOME/.localrc; echo "DONE: source $HOME/.localrc"'
alias sourceall='source $HOME/.bashrc; source $HOME/.localrc; echo "DONE: source $HOME/.bashrc; source $HOME/.localrc"'

# Utility
alias cbcopy='xclip -selection clipboard'
alias cbpaste='xclip -selection clipboard -o'
alias ruler='screenruler'
alias picker='gpick'
alias colorpicker='gpick'
