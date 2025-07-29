#! /bin/bash

echo "Begining environment setup..."

echo "Copying configs"
ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/fish ~/.config/fish
ln -s $PWD/kitty ~/.config/kitty
ln -s $PWD/alacritty ~/.config/alacritty
ln -s $PWD/omf ~/.config/omf
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/ghosty ~/Library/Application\ Support/com.mitchellh.ghostty
ln -s $PWD/vim/.vimrc ~.vimrc

# Todo autoinstall tools

# if test -d ./tmp; then
# 	rm -rf ./tmp/*
# else
# 	mkdir tmp
# fi

# if [[ "$OSTYPE" == "darwin"* ]]; then
#	mkdir ./tmp/osx
#	osx_path=./tmp/osx
#	echo $osx_path/nvim.tar.gz
#	curl -L https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz -o $osx_path/nvim.tar.gz
# 
#	mkdir $osx_path/nvim
# fi
