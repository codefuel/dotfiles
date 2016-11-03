
# Aliases
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias get='git'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull'
alias gp='git push'
alias gpo='git push origin'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gla="git log --author=$GIT_USER"
alias glam="git log --pretty=medium --stat --author=$GIT_USER"
alias gpr="git pull --rebase"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias lg1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

case $OSTYPE in
  linux*)
    alias gd='git diff | vim -R -'
    ;;
  darwin*)
    alias gd='git diff | mate'
    ;;
  darwin*)
    alias gd='git diff'
    ;;
esac
