#!/bin/bash

# Documentation
read -r -d '' DOCUMENTATION <<EOF
Usage: config [OPERATION]...
Operation: get/pull   - get new changes from github repository
           push       - push all recently made changes to github repository
           check/show - check current status of dotfiles directory
           edit       - edit dotfiles in vim
EOF

# Define important directories and assign system argument to a variable
CURRENT_DIR=$(pwd)
DOTFILES_DIR=$HOME/.dotfiles
UPDATE_TYPE=$1

# Pull new changes from dotfiles repository
function pull() {
	cd $DOTFILES_DIR
	git pull origin master
	cd $CURRENT_DIR
}

# Push new changes to dotfiles repository
function push() {
	cd ~/.dotfiles
	cd $DOTFILES_DIR
	git add *
	git commit -m "Updating dotfiles..."
	git push origin master
	cd $CURRENT_DIR
}

# Show current git status of directory and show any git diffs
function check() {
	cd $DOTFILES_DIR
	git status
	git diff
	cd $CURRENT_DIR
}

# Edit dotfiles (here I'm using vim)
function edit() {
	cd $DOTFILES_DIR
	vim .
	cd $CURRENT_DIR
}

# Parse second parameter and call the corresponding function; if given an unknown parameter, let user know what options are available (yes, i know this explanation if confusing...)
case $UPDATE_TYPE in
pull)
	pull
	;;
get)
	pull
	;;
push)
	push
	;;
check)
	check
	;;
show)
	check
	;;
edit)
	edit
	;;
*)
	echo "$DOCUMENTATION"
	echo "$UPDATE_TYPE is not a valid operation. Exiting..."
	;;
esac
