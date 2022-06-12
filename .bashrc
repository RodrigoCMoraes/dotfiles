#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi
alias ll="ls -ilha"
alias c="vim ~/.bashrc"
alias rc="source ~/.bashrc"
alias cbspwm="vim ~/.config/bspwm/bspwmrc"
alias csxhkd="vim ~/.config/sxhkd/sxhkdrc"
alias k="kubectl"
alias diff="diff --color=auto"
alias grep="grep --color=auto"
alias ip="ip -color=auto"
alias ls="ls --color=auto"
alias pg="cd $HOME/pg/"
alias dotfiles="cd $HOME/code/dotfiles/"

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export LESS='-R --use-color -Dd+r$Du+b'
export VISUAL=vim
export EDITOR=vim
export PATH=$PATH:/usr/local/go/bin:/$HOME/go/bin:$HOME/scripts/:$HOME/.local/bin/

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
