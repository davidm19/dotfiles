#!/bin/bash

# File:         server-setup.sh
# Decsription:  Installs all applications and dotfiles on a server for davidm19
# Author:       davidm19
# Date:         June 24th, 2019

# Set up vim configuration
function vim_setup() {
	cat ~/.dotfiles/vim/vimrc >~/.vimrc

	PLUGINS=(
		"airblade/vim-gitgutter"
		"tpope/vim-dispatch"
		"tpope/vim-repeat"
		"tpope/vim-surround"
		"tpope/vim-vinegar"
		"Valloric/YouCompleteMe" # If this doesn't work, switch to supertab
	)

	for PLUGIN in "${PLUGINS[@]}"; do
		PLUG_NAME="$(basename "$PLUGIN")"
		echo "Installing $PLUGIN..."
		git clone https://github.com/"$PLUGIN".git "$HOME"/.vim/bundle/"$PLUG_NAME"
		echo -e "\n"
	done

	# Install YouCompleteMe
	python "$HOME"/.vim/bundle/YouCompleteMe/install.py
}

# Set up shell configuration
function shell_setup() {
	if [[ "$OSTYPE" == "linux-gnu" ]]; then
		echo "source ~/.dotfiles/bashrc" >~/.bashrc
	elif [[ "$OSTYPE" == "darwin"* ]]; then
		echo "source ~/.dotfiles/bashrc" >~/.bash_profile
	fi

	curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
	curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
}

# Set up dotfiles
function dotfile_setup() {
	BOLD_GREEN="\033[1;92m"
	RESET="\[\033[0m\]"

	printf "$BOLD_GREEN ** Setting up server config...$RESET\n"
	git clone https://github.com/davidm19/dotfiles.git "$HOME"/.dotfiles/
	cat "$HOME"/.dotfiles/tmux.conf >"$HOME"/.tmux.conf
	vim_setup
	shell_setup
	rm -rf "$HOME"/.dotfiles
	printf "$BOLD_GREEN ** Done setting up server config.$RESET\n"
}

dotfile_setup
