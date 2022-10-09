#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi
alias ll="ls -ilha"
alias c="vim $HOME/.bashrc"
alias rc="source $HOME/.bashrc"
alias cbspwm="vim $HOME/.config/bspwm/bspwmrc"
alias csxhkd="vim $HOME/.config/sxhkd/sxhkdrc"
alias cvim="vim $HOME/.vimrc"
alias k="kubectl"
alias diff="diff --color=auto"
alias grep="grep --color=auto"
alias ip="ip -color=auto"
alias ls="ls --color=auto"
alias gprograms="cd $HOME/pg/"
alias gdotfiles="cd $HOME/code/dotfiles/"
alias gcode="cd $HOME/code/"

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export LESS='-R --use-color -Dd+r$Du+b'
export VISUAL=vim
export EDITOR=vim
export PATH=$PATH:/usr/local/go/bin:/$HOME/go/bin:$HOME/scripts/:$HOME/.local/bin/

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
