#cores
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"
export EDITOR="mate"

alias ll="ls -l"
alias la="ls -la"

alias r="rails"
alias g="git"

alias glog="git log --pretty=format:'%h %Cgreen %cn %Cred %s %Creset'"

#cores no git
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
function proml {
  local       BLACK="\[\033[0;30m\]"
  local       BLUE="\[\033[0;34m\]"
  local       GREEN="\[\033[0;32m\]"
  local       WHITE="\[\033[0;37m\]"
  local       YELLOW="\[\033[0;33m\]"
PS1="$GREEN[\w$YELLOW\$(parse_git_branch)$GREEN]\
$WHITE → "
PS2='> '
PS4='+ '
}
proml
##
