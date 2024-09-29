#!/bin/bash

function install_nvim() {
  wget https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz
  tar -xvzf nvim-linux64.tar.gz
  sudo mv nvim-linux64 /usr/local/nvim
  echo 'export PATH="/usr/local/nvim/bin:$PATH"' >>~/.bashrc
  source ~/.bashrc
  exec bash
  nvim --version

}

function move_nvim_config() {
  mkdir -p .config/nvim
  rm setup.sh
  cp -r * .config/nvim
}

function install_required_programs() {
  echo "will do later :)"
}

function main() {
  install_nvim

  move_nvim_config

  install_required_programs
}

main
