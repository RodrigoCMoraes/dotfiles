sudo apt-get update -y
sudo apt-get install vim git -y
git clone https://github.com/rodrigocmoraes/pc-setup.git ~/.pc-setup
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.pc-setup
cp -r .tmux.conf .bashrc .vim .vimrc .viminfo ~/
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent
