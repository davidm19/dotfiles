#!/bin/bash

# File:         setup.sh
# Decsription:  Installs all applications and dotfiles for davidm19
# Author:       davidm19
# Date:         June 24th, 2019

# Section: Program Setup

# MACOS: {{{
# Install homebrew if it is not currently installed
function homebrew_setup() {
	[[ ! -f "/usr/local/bin/brew" ]] && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

# Install homebrew packages
function homebrew_packages() {

	# Install normal programs
	brew_packages=(
		"wget"
		"curl"
		"bash"
		"zsh"
		"git"
		"coreutils"
		"tmux"
		"vim"
		"neovim"
		"python"
	)
	for program in "${brew_packages[@]}"; do
		brew install "$program"
	done

	# Install cask programs
	brew tap homebrew/cask-fonts
	brew cask install font-meslo-nerd-font
	brew cask install java amethyst
}

function mac_setup() {
	homebrew_setup
	homebrew_packages
}
# }}}

# ARCH LINUX: {{{
# Update pacman
function pacman_update() {
	sudo pacman -Syu
}

# Install pacman packages
function pacman_packages() {
	arch_programs=(
		"wget"
		"curl"
		"bash"
		"zsh"
		"git"
		"tmux"
		"go"
		"vim"
		"neovim"
		"clang"
		"python"
		"python3"
		"python-pip"
		"redshift"
	)
	for program in "${arch_programs[@]}"; do
		echo "Installing $program..."
		sudo pacman -S --noconfirm "$program"
	done
}

# Install yay
function yay_setup() {
	git clone https://aur.archlinux.org/yay.git
	cd yay/ || return
	makepkg -si
	cd .. || return
	rm -rf yay/
}

# Install yay programs
function yay_programs() {
	yay -S spotify
	# yay -S nerd-fonts-complete
	yay -S bdf-curie
	sudo fc-cache -fv
}

function arch_setup() {
	pacman_update
	pacman_packages
	yay_setup
	yay_programs
}
# }}}

# Section: Dotfile Configuration

# Sets up neovim configuration
function nvim_setup() {
	mkdir "$HOME"/.config/nvim
	echo "source ~/.dotfiles/vim/init.vim" >~/.config/nvim/init.vim
	sudo pip3 install pynvim neovim
}

# Set up shell configurations
function shell_setup() {
	if [[ "$OSTYPE" == "linux-gnu" ]]; then
		echo "source ~/.dotfiles/bashrc" >~/.bashrc
	elif [[ "$OSTYPE" == "darwin"* ]]; then
		echo "source ~/.dotfiles/bashrc" >~/.bash_profile
	fi

	curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
	curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

	echo "source ~/.dotfiles/zshrc" >~/.zshrc
}

function dotfile_setup() {
	git clone https://github.com/davidm19/dotfiles.git "$HOME"/.dotfiles/
	echo "source ~/.dotfiles/vim/vimrc" >~/.vimrc
	cat "$HOME"/.dotfiles/tmux.conf >"$HOME"/.tmux.conf
	nvim_setup
	shell_setup
}

# Section: Bootstrapping and Message Scripts

# Define colors
BOLD_GREEN="\033[1;92m"
BLUE="\033[0;34m"
RED="\033[0;31m"
RESET="\[\033[0m\]"

function start_message() {
	# Cool ASCII art dude
	printf "$BLUE......................................................\n" "$BLUE"
	printf "$BLUE.  $BOLD_GREEN  ___   _____ ______________   ___    ____  ______$BLUE.\n"
	printf "$BLUE.   $BOLD_GREEN/   | / ___// ____/  _/  _/  /   |  / __ \/_  __/$BLUE.\n"
	printf "$BLUE.  $BOLD_GREEN/ /| | \__ \/ /    / / / /   / /| | / /_/ / / /   $BLUE.\n"
	printf "$BLUE. $BOLD_GREEN/ ___ |___/ / /____/ /_/ /   / ___ |/ _, _/ / /    $BLUE.\n"
	printf "$BLUE.$BOLD_GREEN/_/  |_/____/\____/___/___/  /_/  |_/_/ |_| /_/     $BLUE.\n"
	printf "$BLUE......................................................\n"

	# Print documentation for the script
	printf "$RED------------------------------------------------------\n"
	echo "Installation script:    Install programs and apply "
	echo "                        dotfile configs to new"
	echo "                        machines"
	echo "Author:                 davidm19"
	echo "Version:                v3.0"
	printf "$RED------------------------------------------------------$RESET\n"
}

function programs_message() {
	# More ASCII art
	printf "$BLUE......................................................\n"
	printf "$BOLD_GREEN    ____                                         \n"
	printf "   / __ \_________  ____  __________ ________  _____\n"
	printf "  / /_/ / ___/ __ \/ __  / ___/ __  / __  __ \/ ___/\n"
	printf " / ____/ /  / /_/ / /_/ / /  / /_/ / / / / / (__  ) \n"
	printf "/_/   /_/   \____/\__, /_/   \__,_/_/ /_/ /_/____/  \n"
	printf "		 /____/                             \n"
	printf "$BLUE......................................................$RESET\n"
}

function config_message() {
	# More ASCII art
	printf "$BLUE......................................................\n"
	printf "$BOLD_GREEN    ____        __  _____ __         \n"
	printf "   / __ \____  / /_/ __(_) /__  _____\n"
	printf "  / / / / __ \/ __/ /_/ / / _ \/ ___/\n"
	printf " / /_/ / /_/ / /_/ __/ / /  __(__  ) \n"
	printf "/_____/\____/\__/_/ /_/_/\___/____/  \n"
	printf "$BLUE......................................................$RESET\n"
}

function end_message() {
	# Nice ending message.
	printf "$BLUE..........................,,,,,,,,,,,,,,,,,,,,..................................\n"
	printf "  $BOLD_GREEN  ______             ____                __   _                       __     \n"
	printf "   $BOLD_GREEN/_  __/___ _       / __/_______  ____ _/ /__(_)___  ____ _      ____/ /___ _\n"
	printf "    $BOLD_GREEN / / / __ \`/_____/ /_/ ___/ _ \/ __ \`/ //_/ / __ \/ __ \`/_____/ __  / __ \`/\n"
	printf "    $BOLD_GREEN/ / / /_/ /_____/ __/ /  /  __/ /_/ / ,< / / / / / /_/ /_____/ /_/ / /_/ /\n"
	printf "   $BOLD_GREEN/_/  \__,_/     /_/ /_/   \___/\__,_/_/|_/_/_/ /_/\__, /      \__,_/\__,_(_)\n"
	printf "                                                    /____/\n"
	printf "$BLUE..........................,,,,,,,,,,,,,,,,,,,,..................................\n"

	printf "$RED--------------------------------------------------------------------------------\n"
	echo "                      We're done. Enjoy your new system."
	printf "$RED--------------------------------------------------------------------------------$RESET\n"

	# Go back to home directory
	cd "$HOME" || return
}

function program_setup() {
	case $OSTYPE in
	"linux-gnu")
		arch_setup
		;;
	"darwin"*)
		mac_setup
		;;
	*)
		exit 1
		;;
	esac
}

start_message
sleep 5 # So message doesn't immediately flash up on the screen (start message is already up)
programs_message
program_setup
sleep 1
config_message
sleep 5
dotfile_setup
sleep 1
end_message
