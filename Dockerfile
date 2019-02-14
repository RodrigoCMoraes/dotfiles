FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y git \
    && git clone https://github.com/rodrigocmoraes/pc-setup.git ~/.pc-setup \
    && cd ~/.pc-setup \
    && chmod +x install.sh \
    && ./install.sh
