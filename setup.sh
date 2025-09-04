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
  "$PWD/ghosty"         "$HOME/Library/Application Support/com.mitchellh.ghostty"
)

function make_links () {
  local arr=("$@")

  for ((i=0; i<${#arr[@]}; i+=2)); do
    ln -s "${arr[i]}" "${arr[i+1]}"
  done
}

make_links "${pairs[@]}"

if [[ "$os_name" == "Darwin" ]]; then
  make_links "${macos_pairs[@]}"
fi
