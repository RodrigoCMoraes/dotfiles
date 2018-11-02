sudo apt-get install vim vifm -y

mkdir -p ~/.vim/colors/

wget -c -P ~/.vim/colors https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
wget -c -P ~/.config/vifm/colors/ https://raw.githubusercontent.com/vifm/vifm-colors/master/molokai.vifm

cp -f vimrc ~/.vimrc
