#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi
alias ll="ls -la"
alias c="vim ~/.bashrc"
alias rc="source ~/.bashrc"
alias cbspwm="vim ~/.config/bspwm/bspwmrc"
alias csxhkd="vim ~/.config/sxhkd/sxhkdrc"
alias k="kubectl"

export VISUAL=vim
export EDITOR=vim
export PATH=$PATH:/usr/local/go/bin:/$HOME/go/bin:$HOME/scripts/

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
