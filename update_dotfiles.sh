CURRENT_DIR=$(pwd)
DOTFILES_DIR=$HOME/.dotfiles
UPDATE_TYPE=$1

function pull {
    cd $DOTFILES_DIR
    git pull origin master
    cd $CURRENT_DIR
}

function push {
    cd ~/.dotfiles
    cd $DOTFILES_DIR
    git add *
    git commit -m "Updating dotfiles..."
    git push origin master
    cd $CURRENT_DIR
}

function check {
    cd $DOTFILES_DIR
    git status
    git diff
    cd $CURRENT_DIR
}

case $UPDATE_TYPE in
	get)
		pull
		;;
	pull)
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
	        cd $DOTFILES_DIR
		vim .
		cd $CURRENT_DIR
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
