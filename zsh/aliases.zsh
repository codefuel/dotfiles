alias reload!='. ~/.zshenv;. ~/.zshrc'

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
alias zshrc='vi ~/.zshrc'
alias localrc='vi ~/.localrc'
alias sourcezsh='source ~/.zshrc; echo "DONE: source ~/.zshrc"'
alias sourcelocal='source ~/.localrc; echo "DONE: source ~/.localrc"'
alias sourceall='source ~/.zshrc; source ~/.localrc; echo "DONE: source ~/.zshrc; source ~/.localrc"'

# Utility
alias cbcopy='xclip -selection clipboard'
alias cbpaste='xclip -selection clipboard -o'
alias ruler='screenruler'
alias picker='gpick'
alias colorpicker='gpick'
