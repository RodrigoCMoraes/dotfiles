#!/bin/bash

if [ $1 != 'docker' ]
then
    apt-get update -y
    apt-get install terminator gitg -y
fi

apt install -y \
  vim \
  git \
  tree \
  thefuck \
  tmux

if [ $1 != 'docker' ]
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh --silent
    cd ~/.pc-setup
    cp -r .tmux.conf .vim .vimrc .viminfo ~/
    sed -i 's/bobby/sexy/g' ~/.bashrc
    vim -c 'PluginInstall' -c 'qa!'
    vim -c 'PlugInstall' -c 'qa!'
    cat .bashrc >> ~/.bashrc
else
    git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
    git clone --depth=1 https://github.com/Bash-it/bash-it.git /root/.bash_it
    /root/.bash_it/install.sh --silent
    sed -i 's/bobby/sexy/g' /root/.bashrc
    vim -c 'PluginInstall' -c 'qa!'
    vim -c 'PlugInstall' -c 'qa!'
    cat .bashrc_temp >> /root/.bashrc
    rm .bashrc_temp
fi
