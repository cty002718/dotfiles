script_dir=$(realpath $(dirname "$0"))
ln -sfn "$script_dir/.tmux.conf" ~/.tmux.conf
