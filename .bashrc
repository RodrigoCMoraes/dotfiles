# create new session if does not exists one, attach to it otherwise
if [ "$TMUX" == "" ]; then
    tmux new-session -A -s main
fi

set -o vi
bind '"jk":"\e"'
alias c="clear"
alias ll='c; ls -alF'
alias lt='c; tree -a -C -L'
alias l='lt 1 -I ".*"'
alias gs='c; git status'
alias gh="c; git log --all --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias gd='c; git diff'
alias ga='f(){ git add "$@"; gs; unset -f f; }; f'
alias gr='f(){ git reset HEAD "$@"; gs; unset -f f; }; f'
alias gm='git commit -m '
alias gpom='git pull origin master'
alias tasks='c; git grep -EI "TODO|FIXME|BUG"'
alias la='c; grep alias ~/.bashrc | tail -n +3 | head -n -1'
