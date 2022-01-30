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

export VISUAL=vim
export EDITOR=vim
export PATH=$PATH:/usr/local/go/bin:/$HOME/go/bin:$HOME/scripts/


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
