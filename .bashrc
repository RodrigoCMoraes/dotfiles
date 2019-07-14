# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

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
