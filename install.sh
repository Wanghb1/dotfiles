#!/usr/bin/env bash
# install .bashrc
if [ -e "$HOME/.bashrc" ]; then
	echo "exist bash dotfile, remove it"
	rm -f ~/.bashrc 
fi
if ! $(ln -s $(pwd)/.bashrc ~/.bashrc); then 
	echo "create symbolic link ~/.bashrc fail"
	exit 1
fi

# install .vimrc
if [ -e "$HOME/.vimrc" ]; then
	echo "exist bash dotfile, remove it"
	rm -f ~/.vimrc 
fi
if ! $(ln -s $(pwd)/.vimrc ~/.vimrc); then 
	echo "create symbolic link ~/.vimrc fail"
	exit 1
fi
