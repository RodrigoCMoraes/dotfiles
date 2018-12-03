sudo apt-get install vim vifm -y

mkdir -p ~/.vim/colors/
mkdir -p ~/.vifm/colors/

wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim 
wget https://raw.githubusercontent.com/vifm/vifm/master/data/colors/istib-solarized-dark.vifm

cp -f istib-solarized-dark.vifm ~/.vifm/colors/
cp -f monokai.vim ~/.vim/colors/

cp -f vimrc ~/.vimrc
cp -f vifmrc ~/.config/vifm/
cp -f vifmrc ~/.vifm/vifmrc
cp -f tmux.conf ~/.tmux.conf
