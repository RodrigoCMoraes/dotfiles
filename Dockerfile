FROM ubuntu:latest

RUN apt-get update -y

WORKDIR /root

COPY ./.bashrc /root/.bashrc_temp
COPY ./.tmux.conf /root/.tmux.conf
COPY ./.vim /root/.vim
COPY ./.viminfo /root/.viminfo
COPY ./.vimrc /root/.vimrc
COPY ./install.sh /root/install.sh

RUN chmod +x install.sh \
    && ./install.sh docker
