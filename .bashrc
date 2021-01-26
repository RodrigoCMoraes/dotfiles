#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

[ -f "/home/rodrigocm/.config/icons" ] && source "/home/rodrigocm/.config/icons"

# lf uses it
export VISUAL=vim
export EDITOR=vim
export PATH="/home/rodrigocm/scripts/:$PATH"
export LESS='-R'
export LESSOPEN='|~/scripts/lessfilter %s'
