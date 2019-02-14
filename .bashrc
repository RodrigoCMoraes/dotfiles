# create new session if does not exists one, attach to it otherwise
if [ "$TMUX" == "" ]; then
    tmux new-session -A -s main
fi

set -o vi
bind '"jk":"\e"'
alias c="clear"
alias ll='ls -alF'
alias lt='clear; tree -L '
sed -i 's/bobby/sexy/g' ~/.bashrc
