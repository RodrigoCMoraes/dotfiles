# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
source .aliases

# set vi mode in bash
set -o vi
bind '"jk"':vi-movement-mode

# create new session if does not exists one; attach to last session if a session exists
if [ "$TMUX" == "" ]
then
	tmux new-session -A -s main
fi
