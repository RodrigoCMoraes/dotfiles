sudo apt-get install vim vifm -y

mkdir -p ~/.vim/colors/

wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim 
wget https://raw.githubusercontent.com/vifm/vifm-colors/master/molokai.vifm

cp monokai.vim ~/.vim/colors/
cp -f vimrc ~/.vimrc
