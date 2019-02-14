apt-get update -y
apt-get install -y \
  vim \
  git \
  tree \
  thefuck \
  tmux
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.pc-setup
cp -r .tmux.conf .bashrc .vim .vimrc .viminfo ~/
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent
