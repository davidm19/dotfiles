#!/bin/bash

# Define important directories and system argument
CURRENT_DIR=$(pwd)
DOTFILES_DIR=$HOME/.dotfiles
UPDATE_TYPE=$1

# Pull new changes from dotfiles repository
function pull {
    cd $DOTFILES_DIR
    git pull origin master
    cd $CURRENT_DIR
}

# Push new changes to dotfiles repository
function push {
    cd ~/.dotfiles
    cd $DOTFILES_DIR
    git add *
    git commit -m "Updating dotfiles..."
    git push origin master
    cd $CURRENT_DIR
}

# Show current git status of directory and show any git diffs
function check {
    cd $DOTFILES_DIR
    git status
    git diff
    cd $CURRENT_DIR
}

# Edit dotfiles (here I'm using vim)
function edit {
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
		echo "Usage: config [OPERATION]..."
		echo "Operation: get/pull   - get new changes from github repository"
		echo "           push       - push all recently made changes to github repository"
		echo "           check/show - check current status of dotfiles directory"
		echo "           edit       - edit dotfiles in vim"
		echo
		echo "Exiting..."
		;;
esac
