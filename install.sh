#!/bin/bash

if [ "$1" =  "docker" ]
then
    echo "installing in container"
else
    echo "NOT installing in container"
    sudo apt-get update -y
    sudo apt-get install terminator gitg -y
fi

if [ "$1" =  "docker" ]
then
apt install -y \
  vim \
  git \
  tree \
  thefuck \
  tmux \
  curl
else
sudo apt install -y \
  vim \
  git \
  tree \
  thefuck \
  tmux \
  curl
fi

if [ "$1" =  "docker" ]
then
	curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -o /usr/bin/diff-so-fancy
else
	sudo curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -o /usr/bin/diff-so-fancy
fi
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

if [ "$1" =  "docker" ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
    git clone --depth=1 https://github.com/Bash-it/bash-it.git /root/.bash_it
    /root/.bash_it/install.sh --silent
    sed -i 's/bobby/sexy/g' /root/.bashrc
    vim -c 'PluginInstall' -c 'qa!'
    vim -c 'PlugInstall' -c 'qa!'
    cat .bashrc_temp >> /root/.bashrc
    rm .bashrc_temp
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh --silent
    cp -r .tmux.conf .vim .vimrc .viminfo ~/
    sed -i 's/bobby/sexy/g' ~/.bashrc
    vim -c 'PluginInstall' -c 'qa!'
    vim -c 'PlugInstall' -c 'qa!'
    cat .bashrc >> ~/.bashrc
fi
