# create new session if does not exists one, attach to it otherwise
if [ "$TMUX" == "" ]; then
    tmux new-session -A -s main
fi

set -o vi
bind '"jk":"\e"'
alias c="clear"
alias ll='ls -alF'
alias lt='clear; tree -a -C -L'
alias gs='clear; git status'
alias gh='git log --all --decorate --oneline --graph --pretty=format:"%C(yellow)%h%Creset%C(cyan)%C(bold)%d%Creset %C(cyan)(%cr)%Creset %C(green)%ce%Creset %s"'
alias tasks='git grep -EI "TODO|FIXME|BUG"'
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
