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
source ~/.bashrc

# install .vimrc
if [ -e "$HOME/.vimrc" ]; then
	echo "exist vim dotfile, remove it"
	rm -f ~/.vimrc 
fi
if ! $(ln -s $(pwd)/.vimrc ~/.vimrc); then 
	echo "create symbolic link ~/.vimrc fail"
	exit 1
fi

# install .tmux.conf
if [ -e "$HOME/.tmux.conf" ]; then
	echo "exist tmux dotfile, remove it"
	rm -f ~/.tmux.conf 
fi
if ! $(ln -s $(pwd)/.tmux.conf ~/.tmux.conf); then 
	echo "create symbolic link ~/.tmux.conf fail"
	exit 1
fi
