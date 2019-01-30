DATE_CURRENTLY="$(date +"%u")-$(date +"%T")" #THESE TWO LINES GO IN BASHRC
if [[ "$DATE_CURRENTLY" == "2-16:00:00" ]]; then #THESE TWO LINES GO IN BASHRC
    # SO EVERY TUESDAY AT 4PM PLUGINS UPDATE
    CURRENT_DIR=$(pwd)
    cd ~/.vim/bundle/
    for dir in $(ls); do # GO INTO EACH DIRECTORY IN .vim/bundle AND GIT PULL
        cd $dir
        git pull
        cd ../
    done
    cd $CURRENT_DIR
fi
