#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias vi='vim'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias grep='grep --color=auto'
alias cat='bat'
alias ..='cd ..'
alias ...='cd ../..'

HISTCONTROL=erasedups
HISTSIZE=5000
HISTFILESIZE=5000

# parse git branch
parse_branch()
{
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

red="\e[1;31m"
color_end="\e[m"
PS1="${red}\u@\h \W \$(parse_branch)\$ ${color_end}"
