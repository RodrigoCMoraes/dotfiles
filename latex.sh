sudo apt install texlive-full -y
unzip atom.zip
rsync -av --progress atom/ ~/.atom
rm -rf atom/
