curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
script_dir=$(realpath $(dirname "$0"))
ln -sfn "$script_dir/.vimrc" ~/.vimrc
vim +PlugInstall +qall
