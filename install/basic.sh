sudo apt-get install -y \
    vim \
    gdebi \
    snapd \
    git \
    gitg \
    tmux \
    linux-headers-$(uname -r) \
    openssh-client \
    openssh-server \
    rsync
sudo apt-get install -f -y
sudo apt-get autoremove -y
sudo apt-get update -y
sudo apt-get upgrade -y
