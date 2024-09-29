#!/bin/bash

wget https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz
tar -xvzf nvim-linux64.tar.gz
sudo mv nvim-linux64 /usr/local/nvim
echo 'export PATH="/usr/local/nvim/bin:$PATH"' >>~/.bashrc
source ~/.bashrc
nvim --version
