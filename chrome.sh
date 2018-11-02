wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
./pkg-rtg.sh
sudo apt install google-chrome-stable -y
