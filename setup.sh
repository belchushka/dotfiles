#! /usr/bin/env bash

set -euo pipefail

os_name=$(uname -s)

pairs=(
  "$PWD/nvim"           "$HOME/.config/nvim"
  "$PWD/fish"           "$HOME/.config/fish"
  "$PWD/kitty"          "$HOME/.config/kitty"
  "$PWD/alacritty"      "$HOME/.config/alacritty"
  "$PWD/omf"            "$HOME/.config/omf"
  "$PWD/.tmux.conf"     "$HOME/.tmux.conf"
  "$PWD/vim/.vimrc"     "$HOME/.vimrc"
)

macos_pairs=(
  "$PWD/ghosty"         "$HOME/.config/ghostty"
)

packages=('ripgrep' 'nvim' 'fish' 'htop' 'alacritty' 'tmux')

function install_packages_macos() {
  local packages=("$@")

  if ! brew -h > /dev/null 2>&1; then
    echo "Brew is not installed. Installing..."
    (/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  echo "Installing packages for macos using brew..."
  brew install "${packages[@]}"

  echo "Setting default shell"
  local fish_path=$(which fish)
  echo "${fish_path}" | sudo tee -a /etc/shells
  sudo chsh -s "${fish_path}"
}

function make_links () {
  local arr=("$@")

  for ((i=0; i<${#arr[@]}; i+=2)); do
    if [[-e "${arr[i+1]}"]]; then
      continue
    fi


    ln -s "${arr[i]}" "${arr[i+1]}"
  done
}

make_links "${pairs[@]}"

if [[ "$os_name" == "Darwin" ]]; then
  make_links "${macos_pairs[@]}"
  install_packages_macos "${packages[@]}"
fi
