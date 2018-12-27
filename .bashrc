# added by Miniconda3 installer
export PATH="/home/rcmoraes/miniconda3/bin:$PATH"

if [ "$TMUX" == "" ]; then
    tmux new-session -A -s main
fi

set -o vi
alias c="clear"
alias ll='ls -alF'
alias update="sudo apt-get update -y"
alias upgrade="sudo apt-get upgrade -y"
alias install="sudo apt-get install -y"
alias kill="sudo pkill"
alias uuf="update; upgrade; install -f"
